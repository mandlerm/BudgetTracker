class TransactionController < ApplicationController
  def create
    binding.pry
    
    income_source = IncomeSource.find_or_create_by(name: income_params[:income_source_id].titleize)
    income = Income.new(:date => income_params[:date], :amount => income_params[:amount], :income_source => income_source)
    if income.save
      Transaction.create(user: current_user, income: income)
    else

    end

    # income.Transaction.build()

    # create new income row
    # create new transaction row

    redirect_to '/users/current_user.id'
  end
#

# Income.new(:date => income_params[:date], :amount => income_params[:amount], :income_source => income_source)
# self.transaction.build(:user_id => current_user, :note => income_params[:transaction][:note])


  private

  def income_params
    params.require(:income).permit(:date, :amount, :income_source_id, transaction:[:note])
  end


end
