class IncomeController < ApplicationController

  def create
    raise params.inspect

    # create new income row
    # create new transaction row

  end





  private

  def income_params
    params.require(:income).permit(:date, :amount, :income_source_id, transaction:[:note])
  end

end
