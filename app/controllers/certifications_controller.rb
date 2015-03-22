class CertificationsController < ApplicationController
  
  def index
    @certifications = Certification.all
  end

  def show
    @certification = Certification.find(params[:id])
  end

  def new
    @certification = Certification.new
  end

  def create
    @certification = Certification.new(certification_params)
    if @certification.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

private

  def certification_params
    params.require(:certification).permit(:name, :year)
  end
end
