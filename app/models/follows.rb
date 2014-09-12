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

class Follows < ActiveRecord::Base
  validates follower_id, followee_id, presence: true
end
