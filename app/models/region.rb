class Region < ApplicationRecord
  belongs_to :country
  has_many :cities
  validates :region_name, presence: true, length: {minimum: 1}
end

