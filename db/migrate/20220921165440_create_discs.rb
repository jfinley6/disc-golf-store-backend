class CreateDiscs < ActiveRecord::Migration[7.0]
  def change
    create_table :discs do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :speed
      t.string :glide
      t.string :turn
      t.string :fade
      t.string :stability
      t.string :flight_path

      t.timestamps
    end
  end
end
