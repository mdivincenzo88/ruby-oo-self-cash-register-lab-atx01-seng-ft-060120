class CashRegister
attr_accessor :total , :discount

def initialize(discount=0)
  @total=0
  @discount = discount
  @item =[]
  end

def add_item(title,price,quantity=1)

  @total+=price*quantity
  if quantity = 1 
    @item << title
end

def items
  @item
end
  



def apply_discount
 if discount > 0
  @total = @total - (@total *(@discount/100.to_f))
  
  "After the discount, the total comes to $#{total.to_i}."
else
  "There is no discount to apply."
end
end
end