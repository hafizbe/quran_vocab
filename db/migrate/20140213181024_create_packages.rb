class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :order
      t.integer :surah_id

      t.timestamps
    end
  end
end
