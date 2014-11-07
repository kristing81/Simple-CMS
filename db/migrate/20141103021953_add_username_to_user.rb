class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, :limit => 25
  end
end
