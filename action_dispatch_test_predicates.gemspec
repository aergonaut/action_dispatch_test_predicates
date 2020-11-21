require_relative 'lib/action_dispatch_test_predicates/version'

Gem::Specification.new do |spec|
  spec.name          = "action_dispatch_test_predicates"
  spec.version       = ActionDispatchTestPredicates::VERSION
  spec.authors       = ["Chris Fung"]
  spec.email         = ["aergonaut@gmail.com"]

  spec.summary       = "Restores response predicates removed from ActionDispatch::TestResponse in Rails 6"
  spec.homepage      = "https://github.com/aergonaut/action_dispatch_test_predicates"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aergonaut/action_dispatch_test_predicates"
  spec.metadata["changelog_uri"] = "https://github.com/aergonaut/action_dispatch_test_predicates"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", ">= 6.0.0"
end
