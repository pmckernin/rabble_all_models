class CreateAccecptedFriends < ActiveRecord::Migration
  def change
    create_table :accecpted_friends do |t|
      t.integer :user_id_1
      t.integer :user_id_2

      t.timestamps null: false
    end
  end
end
