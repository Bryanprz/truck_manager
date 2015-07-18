class CreateDisposalSites < ActiveRecord::Migration
  def change
    create_table :disposal_sites do |t|
      t.string :name
      t.string :address
      t.references :material, index: true

      t.timestamps null: false
    end
  end
end
