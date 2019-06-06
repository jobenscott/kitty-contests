class AddNameAndPlayerToUglyKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :ugly_kitties, :kitty_name, :string
    add_column :ugly_kitties, :player_name, :string
  end
end
