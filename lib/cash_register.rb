class CashRegister
attr_accessor :total , :discount
@item =[]
def initialize(discount=0)
  @total=0
  @discount = discount
  end

def add_item(title,price,quantity=1)

  @total+=price*quantity
  @items << quantity
end

def item
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