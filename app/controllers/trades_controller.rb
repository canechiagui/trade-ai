class TradesController < ApplicationController
  def index
    @trades = Trade.all
  end

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      redirect_to trades_path, notice: "Trade was successfully created."
    else
      render :new
    end
  end

  private

  def trade_params
    params.require(:trade).permit(:asset, :contracts, :buy_price, :sell_price, :financial_result, :result)
  end
end
