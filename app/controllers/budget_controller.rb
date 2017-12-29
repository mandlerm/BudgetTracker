class BudgetController < ApplicationController

  def new
    @budget = Budget.new
  end

  def create
  end

  def edit

  end

  def update
  end

  private

  def budget_params
    params.require(:budget).permit()
  end
end
