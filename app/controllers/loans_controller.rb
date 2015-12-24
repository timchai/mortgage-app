class LoansController < ApplicationController
  
  def index
    @loans = Loan.all

    Rubillow.configure do |configuration|
    configuration.zwsid = "X1-ZWz1f3hwtklxjf_3csw9"
    #configuration.zwsid = "abcd1234"
    end
  end

  def show
    @loans = Loan.all
    #@loan = Loan.find_by(id: params[:id])
  end

  def new
  end

  def create
    @loan = Loan.create(name: params[:name], description: params[:description])
  end
end
