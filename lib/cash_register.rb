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
    if self.discount
      self.total  = self.total - self.total * self.discount/100.0
      "After the discount, the total comes to $#{self.total.to_int}."
    else
      
    end
    
  end
  
end
