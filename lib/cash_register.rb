class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(name,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << name
        i+=1
      end
    else
      @items << name
    end
    @total += price*quantity
    @price = @total
    @total
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction()
    @total -= @price
  end

end
