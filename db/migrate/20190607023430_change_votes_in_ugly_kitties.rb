class ChangeVotesInUglyKitties < ActiveRecord::Migration[5.2]
  def change
  	change_column :ugly_kitties, :votes, :text, array: true, :default => []
  end
end
