require_relative 'lib/gitignore/version'

Gem::Specification.new do |spec|
  spec.name          = "gitignore-cli"
  spec.version       = Gitignore::VERSION
  spec.authors       = ["Daniel Vinciguerra"]
  spec.email         = ["daniel.vinciguerra@bivee.com.br"]

  spec.summary       = %q{A ruby cli tool that use gitignore.io to generate your gitignore files}
  spec.description   = %q{A ruby cli tool that use gitignore.io to generate your gitignore files}
  spec.homepage      = "https://github.com/dvinciguerra/gitignore"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dvinciguerra/gitignore"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'http', '~> 4.3.0'
end
