class AddAddressToUglyKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :ugly_kitties, :address, :string
  end
end
