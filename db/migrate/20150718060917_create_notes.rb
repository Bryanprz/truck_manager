class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :date
      t.integer :note_type
      t.integer :owner_id
      t.text :text

      t.timestamps null: false
    end
  end
end
