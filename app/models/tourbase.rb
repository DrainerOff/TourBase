class Tourbase < ApplicationRecord
  belongs_to :city
  validates :tourbase_name, presence: true, length: {minimum: 1}
end
