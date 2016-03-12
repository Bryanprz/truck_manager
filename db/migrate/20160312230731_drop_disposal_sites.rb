class DropDisposalSites < ActiveRecord::Migration
  def up
    drop_table :disposal_sites
  end

  def down
    create_table :disposal_sites
  end
end
