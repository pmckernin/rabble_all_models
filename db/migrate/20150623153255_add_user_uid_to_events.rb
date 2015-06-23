class AddUserUidToEvents < ActiveRecord::Migration
  def change
    add_column :events, :user_uid, :string
  end
end
