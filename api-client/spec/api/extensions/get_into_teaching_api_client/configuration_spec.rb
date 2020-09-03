RSpec.describe Extensions::GetIntoTeachingApiClient::Configuration do
  describe "#cache_store" do
    it "is configurable" do
      cache_store = ActiveSupport::Cache.lookup_store(:null_store)

      ::GetIntoTeachingApiClient.configure do |config|
        config.cache_store = cache_store
      end
    
      instance = ::GetIntoTeachingApiClient::ApiClient.new

      expect(instance.config.cache_store).to eq(cache_store)
    end
  end
end