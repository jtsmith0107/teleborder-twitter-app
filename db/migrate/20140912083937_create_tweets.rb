class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body, null: false
      t.integer :twitter_user_id, null: false
      t.timestamps
    end
  end
end
