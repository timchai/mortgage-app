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

  def monthly_payment_30(rates)
    return 500000 * (((rates[:thiry_year_fixed].to_f/100)/1200)/(1 - ((1 + ((rates[:thiry_year_fixed].to_f/100)/1200)) ** -360)))
  end

  def monthly_payment_15(rates)
    return 500000 * (((rates[:fifteen_year_fixed].to_f)/100)/(1200)/(1 - ((1 + ((rates[:fifteen_year_fixed].to_f)/100)/(1200)) ** -180)))
  end

  # def monthly_payment_arm(rates)
  # end

end

    



  

  
