class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end
  
  def add_item (title, price, quantity = 1)
    quantity.times do
      self.items << title
      self.total += price * quantity
    end
  end
  
  def apply_discount
    if self.discount
      self.total  = self.total - self.total * self.discount/100.0
      "After the discount, the total comes to $#{self.total.to_int}."
    else
      "There is no discount to apply."
    end
    
  end
  
end
