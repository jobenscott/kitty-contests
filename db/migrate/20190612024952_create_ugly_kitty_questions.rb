class CreateUglyKittyQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :ugly_kitty_questions do |t|
      t.string :question

      t.timestamps
    end
  end
end
