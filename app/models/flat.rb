class Flat < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, presence: true, length: { maximum: 200 }
  validates :address, presence: true
  validates :price_per_night, presence: true, inclusion: { in: (10..99) }
  validates :number_of_guests, presence: true, inclusion: { in: (1..20) }
  validates :image, presence: true
end
