class Address < ApplicationRecord

  validates :street, :city, :state, :neighbourhood, :postal_code, presence: true
  has_many :users
end
