# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

client = Twitter::REST::Client.new do |config|
  config.consumer_key    = ENV['twitter_consumer_key']
  config.consumer_secret = ENV['twitter_consumer_secret']
end
