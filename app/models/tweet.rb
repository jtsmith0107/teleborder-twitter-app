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

class Tweet < ActiveRecord::Base
  validates :body, :twitter_user_id, presence: true
end
