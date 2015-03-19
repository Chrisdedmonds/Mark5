class CertificationsController < ApplicationController
  
  def index
    @certifications = Certification.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end

private

  def certification_params
    params_require(:certification).permit(:name, :year)
  end
end
