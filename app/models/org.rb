class Org < ApplicationRecord
  has_many :users
  has_many :equipment, through: :users
end
