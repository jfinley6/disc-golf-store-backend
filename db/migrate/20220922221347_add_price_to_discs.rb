class AddPriceToDiscs < ActiveRecord::Migration[7.0]
  def change
    add_column :discs, :price, :float
  end
end
