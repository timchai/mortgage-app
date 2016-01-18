class ApplicationsController < ApplicationController

  def index
  end

  def show
    @application = Application.find(params[:id])
    require 'json'
    Rubillow.configure do |configuration|
    configuration.zwsid = "X1-ZWz1f3hwtklxjf_3csw9"
    end
    @rates = Rubillow::Mortgage.rate_summary.today

  end

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    if @application.save
      flash[:success] = "Application Created"
      redirect_to "/applications/#{@application.id}"
    else
      render :new
    end
  end

  private

  def application_params
    params.require(:application).permit(:id, :full_name, :address, :fico_score, :income, :bankruptcy, :down_payment)
  end
end
