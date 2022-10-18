class ChangePriceColumnInDiscs < ActiveRecord::Migration[7.0]

  def up
    change_column :discs, :price, :float, :precision => 2
  end
  def down
    change_column :discs, :price, :decimal
  end
end
