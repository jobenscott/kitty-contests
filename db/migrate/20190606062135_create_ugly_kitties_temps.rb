class CreateUglyKittiesTemps < ActiveRecord::Migration[5.2]
  def change
    create_table :ugly_kitties_temps do |t|
      t.string :kitty_id

      t.timestamps
    end
  end
end
