class CreateTwitterUsers < ActiveRecord::Migration
  def change
    create_table :twitter_users do |t|
      t.string :name, null: false
      
      t.timestamps
    end
  end
end
