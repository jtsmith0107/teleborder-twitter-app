class TwitterUsersController < ApplicationController
  def create
    #method will assume correct input for now
    user = twitter_client.user(params[:user][:name]) #throws error if no user by that name

    @twitter_user = TwitterUser.new({name: user.screen_name})
    if @twitter_user.save      
      tweets = twitter_client.user_timeline(@twitter_user.name)
      tweets.each do |tweet| #noramally the @twitter_user
        Tweet.create({body: tweet.text, twitter_user_id: @twitter_user.id})
      end
      redirect_to twitter_users_url
    else
      flash.now[:errors] = @twitter_user.errors.full_messages
      render :new
    end
    
  end
  
  def show
    #show will display recent tweets as a rule
    @twitter_user = TwitterUser.find(params[:id])

    render :show
  end
  
  def new 
    render :new
  end
  
  def index
    @twitter_users = TwitterUser.all    
    render :index
  end
  
  
  def common_followers
    user1 = TwitterUser.find({id: params[:user1]})
    user2 = TwitterUser.find({id: params[:user2]})
    
    @common_followers = twitter_client.followers(user1.name).to_a &
                                 twitter_client.followers(user2.name).to_a
    render :common_followers
    
  end
  
  def user_params
    params.require(:twitter_user).permit(:name)
  end
  
end
