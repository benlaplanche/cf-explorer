require 'rspec/core/rake_task'
require 'bundler/gem_tasks'

# Default directory to look in is `/specs`
# Run with `rake spec`
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'documentation']
end

task :test_gem do
  `gem build cf-explorer.gemspec`
  `gem install cf-explorer-0.0.1.gem`
  `pry -e "require 'cf/explorer'"`
end

task :default => :spec