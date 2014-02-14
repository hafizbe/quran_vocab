class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :content_ar
      t.integer :package_id

      t.timestamps
    end
  end
end
