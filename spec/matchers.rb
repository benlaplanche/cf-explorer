require 'rspec/expectations'

RSpec::Matchers.define :valid_url do
  match do |url|
    URI.parse(url) rescue false
  end
end