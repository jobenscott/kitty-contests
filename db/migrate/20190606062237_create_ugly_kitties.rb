class CreateUglyKitties < ActiveRecord::Migration[5.2]
  def change
    create_table :ugly_kitties do |t|
      t.string :kitty_id

      t.timestamps
    end
  end
end
