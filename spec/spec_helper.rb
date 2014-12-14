require 'pry'
require 'cf/explorer'
require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
  c.cassette_library_dir  = "spec/cassettes"
  c.hook_into             :webmock
  c.debug_logger          = STDOUT
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = true
end

RSpec.configure do |config|
  @client =  CF::Explorer::Client.new(
      uaa_url: 	ENV["CF_UAA"],
      api_url: 	ENV["CF_API"],
      user: 		ENV["CF_USER"],
      password: ENV["CF_PASSWORD"],
      options: {
          skip_ssl_validation: true
      })
end