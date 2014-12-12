class AddDescriptionToItems < ActiveRecord::Migration
  def change
  	add_column :items, :desription, :text
  end
end
