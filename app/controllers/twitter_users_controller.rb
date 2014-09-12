class TwitterUsersController < ApplicationController
  def create
    #method will assume correct input for now
    a = twitter_client.user(params[:user][:name]) #throws error if no user by that name
    @twitter_user = TwitterUser.new({name: a.screen_name})
    
    if @twitter_user.save
      redirect_to twitter_users_url
    else
      flash.now[:errors] = @twitter_user.errors.full_messages
      render :new
    end
    
  end
  
  def new 
    render :new
  end
  
  def index
    @twitter_users = TwitterUser.all    
    render :index
  end
  
  
  def user_params
    params.require(:twitter_user).permit(:name)
  end
  
end
