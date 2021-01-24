class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %w[ show edit update destroy ]

  def index
    @portfolio_items ||= Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio Item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

   def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Portfolio Item was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  private

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
