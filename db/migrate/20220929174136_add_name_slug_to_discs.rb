class AddNameSlugToDiscs < ActiveRecord::Migration[7.0]
  def change
    add_column :discs, :name_slug, :string
  end
end
