class CashRegister
  attr_accessor :total, :items, :discount, :last_trans

  def initiaize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, amount = 1)
    if amount > 1
      i=0
      while i < amount
        @items << name
        i+=1
      end
    else
      @items << name
    end
    @total += price*amount
    @last_trans = @total
    @total
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

end
