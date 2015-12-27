class RatesController < ApplicationController
  
  def index
    require 'json'
    # @rates = Unirest.get("http://www.zillow.com/webservice/GetRateSummary.htm?zws-id=X1-ZWz1f3hwtklxjf_3csw9&output=json&callback=cb").body
    # @rates = JSON.parse(@rates)
    Rubillow.configure do |configuration|
    configuration.zwsid = "X1-ZWz1f3hwtklxjf_3csw9"
    end

    @rates = Rubillow::Mortgage.rate_summary.today
  end
end
