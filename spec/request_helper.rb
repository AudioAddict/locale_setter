require 'bundler/setup'
require 'locale_setter'

RSpec.configure do |config|
  config.expect_with(:rspec) {|c| c.syntax = :expect}
  config.order = :random
end

