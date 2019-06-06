class AddLikesToUglyKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :ugly_kitties, :votes, :text, array: true
  end
end
