class LoansController < ApplicationController
  
  def index
    @loans = Loan.all
  end

  def show
    @loans = Loan.all
  end

  def new
  end

  def create
    @loan = Loan.create(name: params[:name], description: params[:description])
  end
end
