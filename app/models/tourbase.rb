class Tourbase < ApplicationRecord
  belongs_to :city
  validates :tourbase_name, presence: true, length: {maximum: 20}

end
