class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  client = Twitter::REST::Client.new do |config|
    config.consumer_key    = ENV['twitter_consumer_key']
    config.consumer_secret = ENV['twitter_consumer_secret']
  end
end
