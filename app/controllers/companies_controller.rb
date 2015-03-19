class CompaniesController < ApplicationController
  
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end

private

  def company_params
    params.require(:company).permit(:name)
  end


end
