class RatesController < ApplicationController
  
  def index
    require 'json'
    Rubillow.configure do |configuration|
    configuration.zwsid = "X1-ZWz1f3hwtklxjf_3csw9"
    end
    @rates = Rubillow::Mortgage.rate_summary.today
  end
end
