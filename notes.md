class Budget < ApplicationRecord
  has_many :incomes
  has_many :outgos
  belongs_to :user
end


class Income < ApplicationRecord
  has_many :income_sources
  has_many :budgets
  belongs_to :user, :through => :budgets
end

class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  belongs_to :user, through: :budgets
end

class Outgo < ApplicationRecord
  has_many :categories
  has_many :budgets
  belongs_to :user, through: :budgets
end
