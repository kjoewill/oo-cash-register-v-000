class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def add_item (title, price)
  end
  
end
