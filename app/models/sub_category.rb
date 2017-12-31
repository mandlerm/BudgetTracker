class SubCategory < ApplicationRecord
  has_many :outgos
  validates :name, uniqueness: true
end
