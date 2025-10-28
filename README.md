# Get into Teaching API Ruby Client

> Ruby client for the Get into Teaching API.

## Usage

```
gem "get_into_teaching_api_client_faraday", "4.3.7.2", git: "git@github.com:DFE-Digital/get-into-teaching-api-ruby-client.git", require: "api/client"
```

```ruby
GetIntoTeachingApiClient.configure do |config|
  config.server_index = nil
  config.scheme = "https"
  config.host = host
  config.base_path = "base_path"
  config.api_key_prefix["apiKey"] = "Bearer"
  config.api_key["apiKey"] = token
  config.cache_store = Rails.cache
  config.circuit_breaker = {
    enabled: true,
    threshold: 5,
    timeout: 5.minutes,
  }
end
```

## Development

You can update the Ruby client by regenerating it from the Get into Teaching API swagger documentation.

```
npm install @openapitools/openapi-generator-cli
openapi-generator-cli version-manager set 5.3.0
```

```
rm -rf ./auto-generated-gem
openapi-generator-cli generate -i <swagger_docs_url> -g ruby -o ./auto-generated-gem -c config.yaml
```

You should then also run the test suite:

```
cd auto-generated-gem; bundle && rspec
```

Finally, bump the version of the `get_into_teaching_api_client_faraday` gem.

### Localhost and Java self-signed certificate issues

If regenerating the API using a locally-hosted Swagger instance with a self-signed certificate, you may run into a certificate error:

```
npm x -c 'openapi-generator-cli generate -i https://localhost:5001/swagger/v1/swagger.json  -g ruby -o ./auto-generated-gem -c config.yaml'
...
[main] ERROR io.swagger.v3.parser.util.RemoteUrl - unable to read
javax.net.ssl.SSLHandshakeException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
	at java.base/sun.security.ssl.Alert.createSSLException(Alert.java:131)
...
```

This can be resolved by temporarily disabling certificate checking:

```
export JAVA_OPTS="-Dio.swagger.parser.util.RemoteUrl.trustAll=true -Dio.swagger.v3.parser.util.RemoteUrl.trustAll=true"
npm x -c 'openapi-generator-cli generate -i https://localhost:5001/swagger/v1/swagger.json  -g ruby -o ./auto-generated-gem -c config.yaml'
```

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
