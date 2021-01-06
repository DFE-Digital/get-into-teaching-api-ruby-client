RSpec.describe Extensions::GetIntoTeachingApiClient::Caching do
  let(:host) { "host.api" }
  let(:endpoint) { "endpoint" }
  let(:get_endpoint) { "https://#{host}/#{endpoint}/api/pick_list_items/candidate/channels" }
  let(:post_endpoint) { "https://#{host}/#{endpoint}/api/candidates/access_tokens" }
  let(:token) { "test" }
  let(:data) { [{ id: 123, value: "test" }] }
  let(:cache_store) { ActiveSupport::Cache.lookup_store(:null_store) }

  def perform_get_request
    GetIntoTeachingApiClient::PickListItemsApi.new.get_candidate_channels
  end

  def perform_post_request
    existing_candidate = GetIntoTeachingApiClient::ExistingCandidateRequest.new(email: "test@test.com")
    GetIntoTeachingApiClient::CandidatesApi.new.create_candidate_access_token(existing_candidate)
  end

  before do
    GetIntoTeachingApiClient.configure do |config|
      config.host = host
      config.base_path = endpoint
      config.api_key["Authorization"] = token
      config.cache_store = cache_store
    end
    cache_store&.clear
  end

  describe "formatting DateTime/Time attributes in query string parameters" do
    context "when UTC" do
      it "formats with the offset +00:00" do
        date = DateTime.new(2022, 1, 1, 10, 30, 59).utc

        stub_request(:get, "https://#{host}/#{endpoint}/api/teaching_events/search_indexed_by_type")
          .with(query: { StartAfter: "2022-01-01 10:30:59 +00:00" })
          .to_return(status: 200)
          
        expect do 
          GetIntoTeachingApiClient::TeachingEventsApi.new.search_teaching_events_indexed_by_type(start_after: date)
        end.to_not raise_error
      end
    end

    context "when not UTC" do
      it "formats with the correct offset" do
        date = Time.new(2022, 1, 1, 10, 30, 59, "-10:00")

        stub_request(:get, "https://#{host}/#{endpoint}/api/teaching_events/search_indexed_by_type")
          .with(query: { StartAfter: "2022-01-01 10:30:59 -10:00" })
          .to_return(status: 200)
          
        expect do 
          GetIntoTeachingApiClient::TeachingEventsApi.new.search_teaching_events_indexed_by_type(start_after: date)
        end.to_not raise_error
      end
    end
  end

  describe "formatting DateTime/Time attributes in request body" do
    context "when UTC" do
      it "formats with the offset +00:00" do
        date = DateTime.new(2022, 1, 1, 10, 30, 59).utc

        stub_request(:post, "https://#{host}/#{endpoint}/api/teacher_training_adviser/candidates")
          .with(body: { phoneCallScheduledAt: "2022-01-01 10:30:59 +00:00" })
          .to_return(status: 200)
          
        expect do 
          request = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(phoneCallScheduledAt: date)
          GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new.sign_up_teacher_training_adviser_candidate(request)
        end.to_not raise_error
      end
    end

    context "when not UTC" do
      it "formats with the correct offset" do
        date = Time.new(2022, 1, 1, 10, 30, 59, "-10:00")

        stub_request(:post, "https://#{host}/#{endpoint}/api/teacher_training_adviser/candidates")
          .with(body: { phoneCallScheduledAt: "2022-01-01 10:30:59 -10:00" })
          .to_return(status: 200)
          
        expect do 
          request = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(phoneCallScheduledAt: date)
          GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new.sign_up_teacher_training_adviser_candidate(request)
        end.to_not raise_error
      end
    end
  end

  it "performs a POST request successfully" do
    stub_request(:post, post_endpoint)
      .with(body: { email: "test@test.com" })
      .to_return(status: 200, body: data.to_json)

    expect { perform_post_request }.to_not raise_error
  end

  it "performs a GET request successfully" do
    stub_request(:get, get_endpoint)
      .to_return(status: 200, body: data.to_json)

    result = perform_get_request
    item = result.first
    expect(item).to be_instance_of(GetIntoTeachingApiClient::PickListItem)
    expect(item).to have_attributes({ id: 123, value: "test" })
  end

  it "raises an ApiError if the request fails" do
    stub_request(:get, get_endpoint)
      .to_return(status: 500)

    expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
  end

  it "sets an Authorization header on the request" do
    stub_request(:get, get_endpoint)
      .with(headers: { "Authorization" => "Bearer #{token}" })
      .to_return \
        status: 200,
        body: data.to_json

    expect { perform_get_request }.to_not raise_error
  end

  it "retries a failed request" do
    stub_request(:get, get_endpoint)
      .to_timeout
      .then
      .to_return(status: 200, body: data.to_json)

    expect { perform_get_request }.to_not raise_error
  end

  it "gives up after the first retry" do
    stub_request(:get, get_endpoint)
      .to_timeout
      .then
      .to_timeout
      .then
      .to_return(status: 200, body: data.to_json)

    expect { perform_get_request }.to raise_error(Faraday::ConnectionFailed)
  end
end
