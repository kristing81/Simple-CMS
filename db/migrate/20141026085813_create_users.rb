class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 25
      t.column "last_name", :string, :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps null: false
    end
  end

  def down
    drop_table :users 
    
  end
end
