class Application < ActiveRecord::Base

  INSURANCE = 83

  def max_loan(rates)
    @max_loan = ((((self.income / 12) * 0.28) / (rates[:thiry_year_fixed].to_i * 200)) * 100000)
    return @max_loan
  end

  def max_purchase
    @max_purchase = @max_loan + self.down_payment
    return @max_purchase
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

  def mortgage_payment_30(rates)
    @mortgage_payment_30 = @max_loan * (((rates[:thiry_year_fixed].to_f/100)/1200)/(1 - ((1 + ((rates[:thiry_year_fixed].to_f/100)/1200)) ** -360)))
    return @mortgage_payment_30
  end

  def mortgage_payment_15(rates)
    @mortgage_payment_15 = @max_loan * (((rates[:fifteen_year_fixed].to_f)/100)/(1200)/(1 - ((1 + ((rates[:fifteen_year_fixed].to_f)/100)/(1200)) ** -180)))
    return @mortgage_payment_15
  end

  def mortgage_payment_arm(rates)
    @mortgage_payment_arm = @max_loan * (((rates[:five_one_arm].to_f/100)/1200)/(1 - ((1 + ((rates[:five_one_arm].to_f/100)/1200)) ** -360)))
    return @mortgage_payment_arm
  end

  def property_taxes
    @property_taxes = (@max_purchase * 0.013)/12
    return @property_taxes
  end

  def total_payment_30
    return @mortgage_payment_30 + @property_taxes + INSURANCE
  end

  def total_payment_15
    return @mortgage_payment_15 + @property_taxes + INSURANCE
  end

  def total_payment_arm
    return @mortgage_payment_arm + @property_taxes + INSURANCE
  end

end

    



  

  
