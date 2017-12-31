class IncomeController < ApplicationController

  def create
    raise params.inspect

    # create new income row
    # create new transaction row

    redirect_to :user_path
  end
#
# income_source = IncomeSource.create_or_find_by(income_params[:income_source_id])
# Income.new(:date => income_params[:date], :amount => income_params[:amount], :income_source => income_source)
# self.transaction.build(:user_id => current_user, :note => income_params[:transaction][:note])


  private

  def income_params
    params.require(:income).permit(:date, :amount, :income_source_id, transaction:[:note])
  end

end
