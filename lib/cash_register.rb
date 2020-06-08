class CashRegister
attr_accessor :total , :discount

def initialize(discount=0)
  @total=0
  @discount = discount
  @item =[]
  end

def add_item(title,price,quantity=1)
@last_transaction = price
  @total+=price*quantity
  
  if quantity>1
      i=0
      while i<quantity
        @item << title
        i+=1
      end
    else
      @item << title
   end
   
end

def items
  @item
end

def void_last_transaction
  @total = @total - @last_transaction



def apply_discount
 if discount > 0
  @total = @total - (@total *(@discount/100.to_f))
  
  "After the discount, the total comes to $#{total.to_i}."
else
  "There is no discount to apply."
end
end
end