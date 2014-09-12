# == Schema Information
#
# Table name: twitter_users
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class TwitterUser < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :tweets
end
