class AddVoteupsForItems < ActiveRecord::Migration
  def change
  	add_column :items, :voteup, :integer
  end
end
