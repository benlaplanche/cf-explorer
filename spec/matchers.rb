require 'rspec/expectations'

RSpec::Matchers.define :be_a_valid_url do
  match do |url|
    URI.parse(url) rescue false
  end
end