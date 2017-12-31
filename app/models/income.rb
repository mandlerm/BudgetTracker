class Income < ApplicationRecord
  has_many :income_sources
  has_many :transactions
  has_one :user, :through => :transactions

  def create

  end




  private

  def income_params
    params.require(:income).permit(  )
  end
end
