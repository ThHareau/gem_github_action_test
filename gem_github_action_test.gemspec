# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'version'

Gem::Specification.new do |s|
  s.name        = "gem_github_action_test"
  s.version     = GithubActionGemTest::VERSION
  s.summary     = "GA test, don't use it"
  s.description = "I want to test automatic release with github actions"
  s.authors     = ["Thomas Hareau"]
  s.files        = Dir['LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.homepage    =
    "https://thomas.hareau.eu"
  s.license       = "MIT"
end

