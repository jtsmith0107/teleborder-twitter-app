# == Schema Information
#
# Table name: follows
#
#  id          :integer          not null, primary key
#  follower_id :integer          not null
#  followee_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class FollowsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
