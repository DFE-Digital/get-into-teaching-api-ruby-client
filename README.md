# Get into Teaching API Ruby Client

> Ruby client for the Get into Teaching API.

## Usage

```
gem "get_into_teaching_api_client_faraday", "2.0.0", git: "git@github.com:DFE-Digital/get-into-teaching-api-ruby-client.git", require: "api/client"
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

You can update the Ruby client by regenerating it from the Get into Teaching API swagger documentation.

```
brew install swagger-codegen
```

```
rm -rf ./auto-generated-gem
swagger-codegen generate -i <swagger_docs_url> -l ruby -o ./auto-generated-gem -c config.json
```

You then need to overwrite the `base_object_spec.rb` with the version in master as it has been manually patched. See [this pull request](https://github.com/swagger-api/swagger-codegen-generators/pull/856) for details. Finally, remove the call to `super(attributes)` from `problem_details.rb` - it has no parent and I'm not yet sure why swagger-codegen puts this call in.

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
