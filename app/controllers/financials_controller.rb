class FinancialsController < ApplicationController
  def index
    @financial = Financial.all
  end

  def new
    @financial = Financial.new
  end

  def create
    @financial = Financial.new(params[:financial])
    if @financial.save
      redirect_to :show
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
    if @findncial = Financial.update_attributes(params[:financial])
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
