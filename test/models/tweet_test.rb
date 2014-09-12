# == Schema Information
#
# Table name: tweets
#
#  id              :integer          not null, primary key
#  body            :string(255)      not null
#  twitter_user_id :integer          not null
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
