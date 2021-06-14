class Country < ApplicationRecord
  has_many :regions
  validates :country_name, presence: true, length: {minimum: 1}
end


