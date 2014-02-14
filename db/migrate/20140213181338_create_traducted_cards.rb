class CreateTraductedCards < ActiveRecord::Migration
  def change
    create_table :traducted_cards do |t|
      t.string :lang
      t.string :content
      t.integer :card_id

      t.timestamps
    end
  end
end
