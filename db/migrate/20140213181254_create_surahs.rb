class CreateSurahs < ActiveRecord::Migration
  def change
    create_table :surahs do |t|
      t.string :name_arabic
      t.integer :nb_packages

      t.timestamps
    end
  end
end
