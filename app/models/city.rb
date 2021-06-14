class City < ApplicationRecord
  has_many :tourbases
  belongs_to :region
end

