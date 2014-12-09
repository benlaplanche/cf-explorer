require 'spec_helper'

describe "Creating a client" do

	it "should have the correct version" do
		expect(CF::Explorer::VERSION).to eq('0.0.1')
	end
end