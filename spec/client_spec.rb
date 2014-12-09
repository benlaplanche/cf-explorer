require 'spec_helper'

describe "Cloud Foundry Explorer" do

	it "should have the correct version" do
		expect(CF::Explorer::VERSION).to eq('0.0.1')
	end

	context "creating a client" do
		let(:client) { CF::Explorer::Client.new(
			uaa_url: 	ENV['CF_UAA'],
			api_url: 	ENV['CF_API'],
			user: 		ENV['CF_USER'],
			password: ENV['CF_PASSWORD'],
			options: {
				skip_ssl_validation: true
			})
		}

		it "should return the correct values" do
			expect(client.uaa_url).to 						eq(ENV['CF_UAA'])
			expect(client.api_url).to 						eq(ENV['CF_API'])
			expect(client.user).to 								eq(ENV['CF_USER'])
			expect(client.password).to 						eq(ENV['CF_PASSWORD'])
			expect(client.skip_ssl_validation).to eq(true)
		end
	end
end