class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :shopping_cart
    has_many :discs, through: :shopping_cart
    has_many :orders

    validates_presence_of :email
    validates_uniqueness_of :email
    validates_uniqueness_of :username
end