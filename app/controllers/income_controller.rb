class IncomeController < ApplicationController

  def create
    binding.pry
    #cheater income_id  -- must have id to save, but cannot have ID until income is saved.  ??? Remove validation ???
    income_source = IncomeSource.find_or_create_by(name: income_params[:income_source_id].titleize)
    income = Income.new(:date => income_params[:date], :amount => income_params[:amount], :income_source_id => income_source.id)
    # income.Transaction.build()

    # create new income row
    # create new transaction row

    # redirect_to :user_path(current_user)
  end
#

# Income.new(:date => income_params[:date], :amount => income_params[:amount], :income_source => income_source)
# self.transaction.build(:user_id => current_user, :note => income_params[:transaction][:note])


  private

  def income_params
    params.require(:income).permit(:date, :amount, :income_source_id, transaction:[:note])
  end

end
