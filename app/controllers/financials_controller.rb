class FinancialsController < ApplicationController

  def new
    # @company = Company.find(params[:company_id])
    # @financial = @company.financials.build
    @company = Company.find(params[:company_id])
    @financial = @company.financials.new

  end

  def create
    @company = Company.find(params[:company_id])
    @financial = @company.financials.new(params[:financial])

    if @financial.save
      redirect_to company_financials_path(@company)
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @financial = Financial.find(params[:id])
  end

  def edit
    @company = Company.find(params[:company_id])
    @financial = @company.financials.find(params[:id])
    # Financial.find(params[:id])
  end

  def update
    @financial = Financial.find(params[:id])
    if @financial.update_attributes(params[:financial])
      redirect_to company_financials_path(@company)
    else
      render :edit
    end
  end

  # def update
  #   @company = Company.find(params[:company_id])
  #   @financial = @company.financial.find(params[:id])
  #   if @financial = @company.financial.update_attributes(params[:financial])
  #     redirect_to @company.financial.find(params[:id])
  #   else
  #     render :edit
  #   end
  # end

  def index
    @company = Company.find(params[:company_id])
    @financial = @company.financials.all
  end

  def destroy
    @financial = Financial.find(params[:id])
    @financial.destroy
    redirect_to :index
  end

end
