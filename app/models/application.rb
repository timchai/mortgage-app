class Application < ActiveRecord::Base

  def max_loan(rates)
    return ((((self.income / 12) * 0.28) / (rates[:thiry_year_fixed].to_i * 200)) * 100000)
  end

  def interest_evaluation(rates, all_rates)
    if self.fico_score >= 750 && self.fico_score <= 850
      return rates[all_rates]
    elsif self.fico_score < 750 && self.fico_score >= 700
      return ((rates[all_rates]).to_f * 1.21)
    elsif self.fico_score < 700 && self.fico_score >= 650
      return ((rates[all_rates]).to_f * 1.40)
    elsif self.fico_score < 650 && self.fico_score >= 600
      return ((rates[all_rates]).to_f * 1.65)
    elsif self.fico_score < 600 && self.fico_score >= 550
      return ((rates[all_rates]).to_f * 1.85)
    end
  end

  # def monthly_payment_30(rates)
    # return max_loan * ((rates[:thiry_year_fixed].to_i)/(12*100)) / ((1 - ((1 + (rates[:thiry_year_fixed].to_i)/(12*100))**-360)))
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



  

  
