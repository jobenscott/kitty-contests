class AddVoteCountToUglyKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :ugly_kitties, :vote_count, :integer, :default => 0
  end
end
