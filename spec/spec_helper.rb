require 'pry'
require 'cf/explorer'
require 'vcr'
require 'webmock/rspec'
require './spec/shared_things'
require './spec/matchers'

VCR.configure do |c|
  c.cassette_library_dir  = "spec/cassettes"
  c.hook_into             :webmock
  c.debug_logger          = STDOUT
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = true
end

RSpec.configure do |config|

end