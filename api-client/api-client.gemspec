require_relative 'lib/api/client/version'

Gem::Specification.new do |spec|
  spec.name          = "api-client"
  spec.version       = Api::Client::VERSION
  spec.authors       = ["Ross Oliver"]
  spec.email         = ["ross.oliver@digital.education.gov.uk"]

  spec.summary       = %q{Ruby client for the Get into Teaching API}
  spec.description   = %q{A Ruby client for the Get into Teaching API. Wraps the gem that is 
    auto-generated from Swagger docs in order to monkey patch it with Faraday 
    for better HTTP cache support and retrying of failed requests.}
  spec.homepage      = "https://github.com/DFE-Digital/get-into-teaching-api-ruby-client"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("faraday")
  spec.add_dependency("faraday-encoding")
  spec.add_dependency("faraday-http-cache")
  spec.add_dependency("faraday_middleware")
  spec.add_dependency("activesupport")

  spec.add_runtime_dependency("get_into_teaching_api_client")
end
