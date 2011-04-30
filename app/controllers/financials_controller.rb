class FinancialsController < ApplicationController
  def index
    @financial = Financial.all
  end

  def new
    @company = Company.find(params[:company_id])
    @financial = Financial.new
  end

  def create
    @company = Company.find(params[:company_id])

    @financial = Financial.new(params[:financial])

    if @financial.save
      redirect_to show_company_path(@company)
    else
      render :new
    end
  end

  def show
    @financial = Financial.find(params[:id])
  end

  def edit
    @financial = Financial.find(params[:id])
  end

  def update
    @financial = Financial.find(params[:id])
    if @financial = Financial.update_attributes(params[:financial])
      redirect_to :show
    else
      render :edit
    end
  end

  def destroy
    @financial = Financial.find(params[:id])
    @financial.destroy
    redirect_to :index
  end

end
