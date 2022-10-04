class Disc < ApplicationRecord
    has_and_belongs_to_many :shopping_cart

    def self.daily_discs
    expires_in_seconds = Time.now.end_of_day + 1.day - Time.now
    Rails.cache.fetch('disc_daily_discs', expires_in: expires_in_seconds) do
      self.all.shuffle.sample(8).to_a
    end
  end
end
