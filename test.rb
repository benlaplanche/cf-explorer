$LOAD_PATH << File.expand_path( File.dirname(__FILE__) + '/lib' )

require 'pry'
require 'cf/explorer'

@my_client = CF::Explorer::Client.new(
    uaa_url: 	ENV["CF_UAA"],
    api_url: 	ENV["CF_API"],
    user: 		ENV["CF_USER"],
    password: ENV["CF_PASSWORD"],
    options: {
        skip_ssl_validation: true
    })

@my_client.info
binding.pry
@my_client.apps
