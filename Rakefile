# frozen_string_literal: true

require 'rake'
require 'version'

task :bump, [:type] do |_t, args|
  type = args[:type]
  raise 'Must specify type: major, minor, patch' unless %w[major minor patch].include?(type)

  puts "Old version was #{GithubActionGemTest::VERSION}"

  major, minor, patch = GithubActionGemTest::VERSION.split('.').map(&:to_i)

  case type
  when 'major'
    major += 1
    minor = 0
    patch = 0
  when 'minor'
    minor += 1
    patch = 0
  when 'patch'
    patch += 1
  else
    raise 'Unknown version'
  end

  new_version = [major, minor, patch].join('.')

  new_content = File.open('lib/version.rb', 'r') do |f|
    f.read.sub(/VERSION = '#{GithubActionGemTest::VERSION}'/, "VERSION = '#{new_version}'")
  end

  File.open('lib/version.rb', 'w') do |f|
    f.write(new_content)
  end

  puts 'Bumped to ' + [major, minor, patch].join('.')
end