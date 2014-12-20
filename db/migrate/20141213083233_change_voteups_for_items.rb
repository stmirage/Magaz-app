class ChangeVoteupsForItems < ActiveRecord::Migration
  def change
  	change_column :items, :voteup, :integer, default: 0
  end
end
