class AddUserUidToAccecptedFriends < ActiveRecord::Migration
  def change
    add_column :accecpted_friends, :user_uid, :string
  end
end
