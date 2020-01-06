class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.integer :opening_time
      t.integer :closing_time
      t.string :image
      t.references :user, foreign_key: true
      t.references :mall, foreign_key: true

      t.timestamps
    end
  end
end
