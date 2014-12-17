require 'spec_helper'

describe "Cloud Foundry Explorer" do
	include_context "shared client connection"
	# require_relative "resources/info"
	it "should have the correct version" do
		expect(CF::Explorer::VERSION).to eq('0.0.1')
	end

	context "creating a client" do

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

end