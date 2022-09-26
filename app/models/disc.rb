class Disc < ApplicationRecord
    has_and_belongs_to_many :shopping_cart
end
