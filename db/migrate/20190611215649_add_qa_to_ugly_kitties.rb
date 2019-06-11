class AddQaToUglyKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :ugly_kitties, :q_a, :jsonb
  end
end
