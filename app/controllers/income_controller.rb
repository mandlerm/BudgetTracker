class IncomeController < ApplicationController

  def create
    raise params.inspect
  end





  private

  def income_params
    params.require(:income).permit()
  end

end
