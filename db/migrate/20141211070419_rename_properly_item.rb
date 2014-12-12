class RenameProperlyItem < ActiveRecord::Migration
  def change
  	rename_table :items, :item
  end
end
