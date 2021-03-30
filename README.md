# Get into Teaching API Ruby Client

> Ruby client for the Get into Teaching API.

## Usage

```
gem "get_into_teaching_api_client_faraday", "0.1.26", git: "git@github.com:DFE-Digital/get-into-teaching-api-ruby-client.git", require: "api/client"
```

```ruby
GetIntoTeachingApiClient.configure do |config|
  config.host = host
  config.base_path = endpoint
  config.api_key["Authorization"] = token
  config.cache_store = Rails.cache
end
```

## Development

You can update the Ruby client by regenerating it from the Get into Teaching API swagger documentation. We need to use v2 of `swagger-codegen` as v3 does not yet support Ruby.

```
brew install swagger-codegen@2
```

```
rm -rf ./auto-generated-gem
swagger-codegen generate -i <swagger_docs_url> -l ruby -o ./auto-generated-gem -c config.json
```

The generated specs fail due to `Addressable::URI.encode` raising an error when given an empty hostname (`URI.encode` did not complain, but since we updated its a problem). You currently need to manually fix the specs that reference a `GetIntoTeachingApiClient::Configuration` instance by setting a host:

```ruby
let(:config) { GetIntoTeachingApiClient::Configuration.new { |c| c.host = "example.com" } }
```

You should then also run the test suite:

```
cd auto-generated-gem; bundle && rspec
```

Finally, bump the version of the `get_into_teaching_api_client_faraday` gem.

## Circuit breaker

Circuit breaker middleware is included to protect from API failures. After a threshold number of failed requests, the circuit breaker will trip. Any further calls will raise a `GetIntoTeachingApiClient::CircuitBrokenError` before another request can be made. The circuit breaker will attempt self-reset after a period of time.

To configure the circuit breaker:

```ruby
GetIntoTeachingApiClient.configure do |config|
  config.circuit_breaker = {
    enabled: true, # Enables the circuit breaker middleware
    threshold: 3, # Number of failures that will cause the circuit breaker to trip
    timeout: 5.minutes # Amount of time until the circuit breaker will attempt to recover
  }
end
```
