class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :prep_time
      t.string :menu_category
      t.references :restaurant, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
