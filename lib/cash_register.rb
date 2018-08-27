class CashRegister
  
  attr_accessor :total, :discount, :item_names
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @item_names = []
  end
  
  def add_item (title, price, quantity = 1)
    self.item_names << title
    self.total += price * quantity
  end
  
  def apply_discount
    self.total  = self.total - self.total * self.discount/100.0
    
  end
  
end
