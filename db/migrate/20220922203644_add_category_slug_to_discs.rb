class AddCategorySlugToDiscs < ActiveRecord::Migration[7.0]
  def change
    add_column :discs, :category_slug, :string
  end
end
