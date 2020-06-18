# Get into Teaching API Ruby Client

> Ruby client for the Get into Teaching API.

## Usage

```
gem "get_into_teaching_api_client", git: "git@github.com:DFE-Digital/get-into-teaching-api-ruby-client.git"
```

## Development

You can update the Ruby client by regenerating it from the Get into Teaching API swaggeer documentation. We need to use v2 of `swagger-codegen` as v3 does not yet support Ruby.

```
brew install swagger-codegen@2
swagger-codegen generate -i <swagger_docs_url> -l ruby -o ./gem -c config.json
```

You should then also run the test suite:

```
cd gem; bundle && rspec
```