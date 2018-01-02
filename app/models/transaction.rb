class Transaction < ApplicationRecord
  belongs_to :income_source, optional: true
  belongs_to :user
  belongs_to :sub_category


end
