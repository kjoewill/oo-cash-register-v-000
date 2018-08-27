class CashRegister
  
  attr_accessor :total, :emp_discount
  
  def initialize(discount = nil)
    @emp_discount = discount
    @total = 0
  end
  
end
