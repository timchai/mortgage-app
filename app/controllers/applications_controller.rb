class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
  end

  def show
    @application = Application.find_by(params[:id])
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
    params.require(:application).permit(:id, :first_name, :last_name, :address, :fico_score, :income, :bankruptcy)
  end
end
