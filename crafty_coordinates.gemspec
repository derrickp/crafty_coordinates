require_relative 'lib/crafty_coordinates/version'

Gem::Specification.new do |spec|
  spec.name          = "crafty_coordinates"
  spec.version       = CraftyCoordinates::VERSION
  spec.authors       = ["Derrick Plotsky"]
  spec.email         = ["derrickplotsky@gmail.com"]

  spec.summary       = %q{To help you keep track of your Minecraft coordinates.}
  spec.description   = %q{To help you keep track of your Minecraft coordinates.}
  spec.homepage      = "https://github.com/derrickp/crafty_coordinates"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/derrickp/crafty_coordinates"
  spec.metadata["changelog_uri"] = "https://github.com/derrickp/crafty_coordinates/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'dry-struct', '~> 1.0'
end
