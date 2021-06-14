class City < ApplicationRecord
  has_many :tourbases
  belongs_to :region
  validates :city_name, presence: true, length: {minimum: 1}
end

