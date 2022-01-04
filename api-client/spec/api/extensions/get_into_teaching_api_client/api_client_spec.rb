RSpec.describe Extensions::GetIntoTeachingApiClient::ApiClient do
  let(:host) { "host.api" }
  let(:api_client) { GetIntoTeachingApiClient::ApiClient.default }
  let(:base_url) { api_client.config.base_url }
  let(:get_endpoint) { "#{base_url}/api/pick_list_items/candidate/channels" }
  let(:post_endpoint) { "#{base_url}/api/candidates/access_tokens" }
  let(:token) { "test" }
  let(:data) { [{ id: 123, value: "test" }] }
  let(:cache_store) { ActiveSupport::Cache::MemoryStore.new }

  def perform_get_request
    GetIntoTeachingApiClient::PickListItemsApi.new.get_candidate_channels
  end

  def perform_post_request
    existing_candidate = GetIntoTeachingApiClient::ExistingCandidateRequest.new(email: "test@test.com")
    GetIntoTeachingApiClient::CandidatesApi.new.create_candidate_access_token(existing_candidate)
  end

  before do
    GetIntoTeachingApiClient.configure do |config|
      config.server_index = nil
      config.scheme = "https"
      config.host = host
      config.base_path = "base_path"
      config.api_key_prefix["apiKey"] = "Bearer"
      config.api_key["apiKey"] = token
      config.cache_store = cache_store
      config.circuit_breaker = { enabled: false }
    end
    cache_store&.clear
  end

  describe "request ids" do
    let(:request_id) { "1234" }

    context "when Current.request_id exists" do
      before { GetIntoTeachingApiClient::Current.request_id = request_id }

      it "sets the Request-Id header" do
        stub_request(:get, "#{base_url}/api/pick_list_items/candidate/channels")
          .with(headers: { "Request-Id": request_id })
          .to_return(status: 200)

        perform_get_request
      end
    end

    context "when Current.request_id does not exist" do
      before { GetIntoTeachingApiClient::Current.request_id = nil }

      it "does not set a Request-Id header" do
        stub_request(:get, "#{base_url}/api/pick_list_items/candidate/channels")
          .with { |request| request.headers["Request-Id"].nil? }
          .to_return(status: 200)

        perform_get_request
      end
    end
  end

  describe "formatting DateTime/Time/Date attributes in query string parameters" do
    context "when UTC" do
      it "formats with the offset +00:00" do
        date = DateTime.new(2022, 1, 1, 10, 30, 59).utc

        stub_request(:get, "#{base_url}/api/teaching_events/search_grouped_by_type")
          .with(query: { StartAfter: "2022-01-01T10:30:59+00:00" })
          .to_return(status: 200)

        expect do
          GetIntoTeachingApiClient::TeachingEventsApi.new.search_teaching_events_grouped_by_type(start_after: date)
        end.to_not raise_error
      end
    end

    context "when not UTC" do
      it "formats with the correct offset" do
        date = Time.new(2022, 1, 1, 10, 30, 59, "-10:00")

        stub_request(:get, "#{base_url}/api/teaching_events/search_grouped_by_type")
          .with(query: { StartAfter: "2022-01-01T10:30:59-10:00" })
          .to_return(status: 200)

        expect do
          GetIntoTeachingApiClient::TeachingEventsApi.new.search_teaching_events_grouped_by_type(start_after: date)
        end.to_not raise_error
      end
    end

    context "when Date" do
      it "formats correctly" do
        date = Date.new(2022, 1, 1)

        stub_request(:get, "#{base_url}/api/teaching_events/search_grouped_by_type")
          .with(query: { StartAfter: "2022-01-01" })
          .to_return(status: 200)

        expect do
          GetIntoTeachingApiClient::TeachingEventsApi.new.search_teaching_events_grouped_by_type(start_after: date)
        end.to_not raise_error
      end
    end
  end

  describe "formatting DateTime/Time/Date attributes in request body" do
    context "when UTC" do
      it "formats with the offset +00:00" do
        date = DateTime.new(2022, 1, 1, 10, 30, 59).utc

        stub_request(:post, "#{base_url}/api/teacher_training_adviser/candidates")
          .with(body: { phoneCallScheduledAt: "2022-01-01T10:30:59+00:00" })
          .to_return(status: 200)

        expect do
          request = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(phone_call_scheduled_at: date)
          GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new.sign_up_teacher_training_adviser_candidate(request)
        end.to_not raise_error
      end
    end

    context "when not UTC" do
      it "formats with the correct offset" do
        date = Time.new(2022, 1, 1, 10, 30, 59, "-10:00")

        stub_request(:post, "#{base_url}/api/teacher_training_adviser/candidates")
          .with(body: { phoneCallScheduledAt: "2022-01-01T10:30:59-10:00" })
          .to_return(status: 200)

        expect do
          request = GetIntoTeachingApiClient::TeacherTrainingAdviserSignUp.new(phone_call_scheduled_at: date)
          GetIntoTeachingApiClient::TeacherTrainingAdviserApi.new.sign_up_teacher_training_adviser_candidate(request)
        end.to_not raise_error
      end
    end

    context "when Date" do
      it "formats correctly" do
        date = Date.new(2022, 1, 1)

        stub_request(:post, "#{base_url}/api/candidates/access_tokens")
          .with(body: { dateOfBirth: "2022-01-01" })
          .to_return(status: 200)

        expect do
          request = GetIntoTeachingApiClient::ExistingCandidateRequest.new(date_of_birth: date)
          GetIntoTeachingApiClient::CandidatesApi.new.create_candidate_access_token(request)
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

  it "performs a GET request with multiple query parameters successfully" do
    stub_request(:get, "#{base_url}/api/schools_experience/candidates")
      .with(query: { ids: "first,second" })
      .to_return(status: 200, body: data.to_json)

    ids = %w(first second)
    GetIntoTeachingApiClient::SchoolsExperienceApi.new.get_schools_experience_sign_ups(ids)
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

  it "re-raises FaradayError when there is no response" do
    stub_request(:get, get_endpoint).to_raise(Faraday::Error)

    expect { perform_get_request }.to raise_error(Faraday::Error)
  end

  describe "Circuit breaker" do
    let(:threshold) { 3 }
    let(:timeout) { 5.minutes }

    context "when enabled" do
      before(:each) do
        Stoplight::Light.default_data_store = Stoplight::DataStore::Memory.new

        GetIntoTeachingApiClient.configure do |config|
          config.circuit_breaker = { enabled: true, threshold: threshold, timeout: timeout }
        end
      end

      context "when the API returns a number of errors below the threshold that can cause a broken circuit" do
        it "does not break the circuit" do
          stub_request(:get, get_endpoint)
            .to_return(status: 500)

          (threshold - 1).times do
            expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
          end

          expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
        end
      end

      context "when the API returns a number of errors above the threshold that can cause a broken circuit" do
        it "breaks the circuit" do
          stub_request(:get, get_endpoint)
            .to_return(status: 500)

          threshold.times do
            expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
          end

          expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::CircuitBrokenError)
        end
      end

      context "when the API returns a number of errors above the threshold that cannot cause a broken circuit" do
        it "does not break the circuit" do
          stub_request(:get, get_endpoint)
            .to_return(status: 404)

          (threshold + 1).times do
            expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
          end
        end
      end

      context "when the timeout period has passed with no more errors" do
        it "the circuit is reset" do
          stub_request(:get, get_endpoint)
            .to_return(status: 500)

          threshold.times do
            expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
          end

          expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::CircuitBrokenError)

          travel_to((timeout + 1.second).from_now) do
            expect { perform_get_request }.to raise_error { |error|
              expect(error).to be_kind_of(GetIntoTeachingApiClient::ApiError) }
          end
        end
      end

      circuit_breaking_errors = { unauthorized: 401, forbidden: 403, server: 500, timeout: 504 }

      circuit_breaking_errors.each do |error, status_code|
        it "should be tripped by #{error} error (status code #{status_code})" do
          stub_request(:get, get_endpoint)
            .to_return(status: status_code)

          threshold.times do
            expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::ApiError)
          end

          expect { perform_get_request }.to raise_error(GetIntoTeachingApiClient::CircuitBrokenError)
        end
      end
    end
  end

  describe "Cache invalidation" do
    let(:headers) { { "Cache-Control" => "max-age=300; private" } }
    let(:first_response) { [{ value: "first response" }] }
    let(:second_response) { [{ value: "second response" }] }

    it "caches responses by default" do
      stub_request(:get, get_endpoint)
        .to_return(
          status: 200,
          body: first_response.to_json,
          headers: headers
        )

      expect(perform_get_request.first.value).to eq(first_response.first[:value])

      stub_request(:get, get_endpoint)
        .to_return(
          status: 200,
          body: second_response.to_json,
          headers: headers
        )

      expect(perform_get_request.first.value).to eq(first_response.first[:value])
    end
    
    CacheInvalidator::PATHS.product(CacheInvalidator::METHODS).each do |path, method|
      it "clears the cache on #{method.upcase} #{path}" do
        url = "#{base_url}#{path}"
        
        stub_request(:get, get_endpoint)
          .to_return(
            status: 200,
            body: first_response.to_json,
            headers: headers
          )
  
        expect(perform_get_request.first.value).to eq(first_response.first[:value])
  
        stub_request(method, url).to_return(status: 201)
  
        api_client.call_api(method.downcase, path, { header_params: {}, query_params: {} })

        stub_request(:get, get_endpoint)
          .to_return(
            status: 200,
            body: second_response.to_json,
            headers: headers
          )
  
        expect(perform_get_request.first.value).to eq(second_response.first[:value])
      end
    end
  end
end
