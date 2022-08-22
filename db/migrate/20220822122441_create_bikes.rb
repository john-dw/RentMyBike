class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :category
      t.integer :price_per_day
      t.string :location
      t.string :name
      t.text :description
      t.string :model
      t.string :picture_url

      t.timestamps
    end
  end
end
