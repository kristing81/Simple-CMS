class CreatePagesUsersJoin < ActiveRecord::Migration
  def change
    create_table :pages_users, :id => false do |t|
      t.integer "user_id"
      t.integer "page_id"
    end
    add_index :pages_users, ["user_id", "page_id"]
  end
end
