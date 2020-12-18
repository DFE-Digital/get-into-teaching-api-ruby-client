# Get into Teaching API Ruby Client

> Ruby client for the Get into Teaching API.

## Usage

```
gem "get_into_teaching_api_client_faraday", "0.1.9", git: "git@github.com:DFE-Digital/get-into-teaching-api-ruby-client.git", require: "api/client"
```

```
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

You should then also run the test suite:

```
cd auto-generated-gem; bundle && rspec
```

Finally, bump the version of the `get_into_teaching_api_client_faraday` gem.
