class StaticPagesController < ApplicationController
  def root
    render :root
  end
  
  def test_api
    client
  end
    
end

