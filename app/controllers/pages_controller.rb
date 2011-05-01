class PagesController < ApplicationController

  def index
    @company = Company.all
  end
  
  def show
    @company = Company.find(params[:id])
  end


  def dashboard
  end

  def commentary
  end

end
