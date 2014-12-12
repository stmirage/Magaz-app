class RenameItemdToItem < ActiveRecord::Migration
  def change
  	rename_table :item, :items
  end
end
