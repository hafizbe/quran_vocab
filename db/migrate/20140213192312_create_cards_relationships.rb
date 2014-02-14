class CreateCardsRelationships < ActiveRecord::Migration
  def change
    create_table :card_relationships do |t|
      t.integer :user_id
      t.integer :card_id
      t.integer :response
      t.integer :old_interval, :default => 0
      t.integer :next_interval
      t.date :next_date
      t.date :date_response
      t.decimal :easiness_factor


      t.timestamps
    end

    add_index :card_relationships, :card_id
    add_index :card_relationships, :user_id
    add_index :card_relationships, [:card_id, :user_id, :date_response], :unique => true, :name =>"Index unique CardRelationship"
  end
end
