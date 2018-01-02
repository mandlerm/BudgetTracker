class TransactionController < ApplicationController
  def create
    binding.pry

    transaction = Transaction.new()

    redirect_to '/users/current_user.id'
  end


  private

  def transaction_params
    params.require(:transaction).permit(:date, :amount, :sub_category, :recipient, :income_source, :notes)
  end

end
