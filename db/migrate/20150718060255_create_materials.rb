class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type
      t.boolean :sellable
      t.text :notes

      t.timestamps null: false
    end
  end
end
