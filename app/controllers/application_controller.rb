class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :signed_in?, :current_user
  
  def twitter_client
    client ||= Twitter::REST::Client.new do |config|
      config.consumer_key    = ENV['twitter_consumer_key']
      config.consumer_secret = ENV['twitter_consumer_secret']
      config.access_token        = ENV['twitter_access_token']
      config.access_token_secret = ENV['twitter_access_token_secret']
    end
    client
  end
  
  def sign_in!(user)
    @current_user = user
    session[:token] = user.reset_token!
  end
  
  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_session_token(session[:token])
  end
  
  def signed_in?
    !!current_user
  end
  
  def sign_out!
    current_user.try(:reset_token)
    session[:token] = nil
  end
    
  def require_signed_in!
    redirect_to new_session_url unless signed_in?
  end
end
