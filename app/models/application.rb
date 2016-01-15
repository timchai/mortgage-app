class Application < ActiveRecord::Base

  def max_loan(rates, year_fixed)
    return ((((self.income / 12) * 0.28) / (rates[year_fixed].to_i * 110)) * 100000)
  end

  def interest_evaluation (rates, all_rates)
    if self.fico_score >= 750 && self.fico_score <= 850
      return rates[all_rates]
    elsif self.fico_score < 750 && self.fico_score >= 700
      return ((rates[all_rates]).to_i + 0.31).round(2)
    elsif self.fico_score < 700 && self.fico_score >= 650
      return ((rates[all_rates]).to_i + 0.52).round(2)
    elsif self.fico_score < 650 && self.fico_score >= 600
      return ((rates[all_rates]).to_i + 1.25).round(2)
    elsif self.fico_score < 600 && self.fico_score >= 550
      return ((rates[all_rates]).to_i + 1.55).round(2)
    end
  end

  # def monthly_payment_30fixed
  #   max_loan
  # end

end

    # if self.income - self.debt <= 20000
    #   return "You might want to think about renting."
    # elsif self.income - self.debt > 20000 && self.income - self.debt <= 50000
    #   return 1000
    # elsif self.income - self.debt > 50000 && self.income - self.debt <= 75000
    #   return "Almost there"
    # elsif self.income - self.debt > 75000 && self.income - self.debt<= 100000
    #   return 290000
    # elsif self.income - self.debt > 100000 && self.income - self.debt <= 150000
    #   return "I'll loan you $500,000"
    # elsif self.income - self.debt > 150000 && self.income - self.debt <= 200000
    #   return "650,000"
    # elsif self.income - self.debt > 200000 && self.income - self.debt <= 250000
    #   return "900,000"
    # elsif self.income - self.debt > 250000 && self.income - self.debt < 1000000
    #   return "1 million, yeah!"
    # elsif self.income >= 1000000
    #   return "You make too much money!  Do you really need a loan?"
    # end



  

  
