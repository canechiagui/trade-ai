class InvestmentsController < ApplicationController
  def index
    @investments = Investment.all
  end

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(investment_params)

    if @investment.save
      redirect_to investments_path, notice: "Investiment was successfully created."
    else
      render :new
    end
  end

  private

  def investment_params
    params.require(:investment).permit(:asset, :value, :percent)
  end
end
