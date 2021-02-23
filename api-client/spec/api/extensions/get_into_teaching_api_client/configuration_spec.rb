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

    describe "#circuit_breaker" do
      circuit_breaker_config = { enabled: true, threshold: 3, timeout: 5.minutes }
      it "is configurable" do
        ::GetIntoTeachingApiClient.configure do |config|
          config.circuit_breaker = circuit_breaker_config
        end

        instance = ::GetIntoTeachingApiClient::ApiClient.new

        expect(instance.config.circuit_breaker).to eq(circuit_breaker_config)
      end
    end
  end
end