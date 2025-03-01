# frozen_string_literal: true

require_relative "lib/gifteeabukumacss/version"

Gem::Specification.new do |spec|
  spec.name = "gifteeabukumacss-rails"
  spec.version = Gifteeabukumacss::Rails::VERSION
  spec.authors = ["egurinko"]
  spec.email = ["egctoru@gmail.com"]

  spec.summary = "Integrate giftee Abukuma CSS with the asset pipeline in Rails."
  spec.homepage = "https://abukuma.netlify.app"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/giftee/abukumacss-rails"
  spec.metadata["changelog_uri"] = "https://github.com/giftee/abukumacss-rails/CHANGELOG.md"

  File.basename(__FILE__)
  spec.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
