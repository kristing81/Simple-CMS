class CreateSectionEdits < ActiveRecord::Migration
  def change
    create_table :section_edits do |t|
      t.references :user
      t.references :section
      t.string :summary
      t.timestamps null: false
    end
    add_index :section_edits, ["user_id", "section_id"]
  end
end
