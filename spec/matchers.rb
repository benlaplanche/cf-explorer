require 'rspec/expectations'

RSpec::Matchers.define :be_a_valid_url do
  match do |url|
    URI.parse(url) rescue false
  end
end

RSpec::Matchers.define :be_a_guid do
  match do |guid|
    guid =~ /\w{8}\W\w{4}\W\w{4}\W\w{4}\W\w{12}/ rescue false
  end
end