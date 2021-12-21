module Middleware
  class RequestId < Faraday::Middleware
    def initialize(app)
      super(app)
    end

    def call(env)
      request_id = ::GetIntoTeachingApiClient::Current.request_id

      env[:request_headers]["Request-Id"] = request_id if request_id

      @app.call(env)
    end
  end
end
