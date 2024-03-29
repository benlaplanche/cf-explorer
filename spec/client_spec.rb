require 'spec_helper'

describe "Cloud Foundry Explorer" do
	include_context "shared client connection"

	it "should have the correct version" do
		expect(CF::Explorer::VERSION).to eq('0.0.1')
	end

	context "creating a client with valid connection options" do

		it "should return the correct values" do
			expect(@my_client.uaa_url).to 							eq(ENV['CF_UAA'])
			expect(@my_client.api_url).to 							eq(ENV['CF_API'])
			expect(@my_client.user).to 									eq(ENV['CF_USER'])
			expect(@my_client.password).to 							eq(ENV['CF_PASSWORD'])
			expect(@my_client.skip_ssl_validation).to 	eq(true)
			expect(@my_client.options).to 							eq({:skip_ssl_validation=>true})
		end

		# it "should return a token", :vcr => { :cassette_name => "uaa token", :record => :once, :match_requests_on => [:host, :path] } do
		it "should return a token" do
			expect(@my_client.access_token).to_not be(nil)
		end
	end

	context "creating a client without valid connection options" do

		it "should return an error" do
			expect { CF::Explorer::Client.new }.to raise_error(CF::Explorer::ClientOptionsError)
		end

	end

	context "creating a client and unable to generate a token" do

		it "should return an error" do
			expect { CF::Explorer::Client.new(
					uaa_url: 	"https://uaa.example.com",
					api_url: 	ENV["CF_API"],
					user: 		ENV["CF_USER"],
					password: ENV["CF_PASSWORD"],
					options: {
							skip_ssl_validation: true
					})
			}.to raise_error(CF::Explorer::ClientTokenError)
		end
	end

end