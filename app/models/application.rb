class Application < ActiveRecord::Base

  def max_loan
    if self.income <= 20000
      return "You might want to think about renting."
    elsif self.income > 20000 && self.income <= 50000
      return 1000
    elsif self.income > 50000 && self.income <= 75000
      return 
    elsif self.income > 75000 && self.income <= 100000
      return
    elsif self.income > 100000 && self.income <= 150000
      return
    elsif self.income > 150000 && self.income <= 200000
      return
    elsif self.income > 200000 && self.income <= 250000
      return
    elsif self.income >= 1000000
      return "You make too much money! Do you really need a loan?"
      
    end
  end

end
