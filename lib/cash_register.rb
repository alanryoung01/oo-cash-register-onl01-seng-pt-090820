class CashRegister

  attr_accessor :total, :discount, :last_trans, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end


  def add_item(name,price,items = 1)
    if items>1
      i=0
      while i<items
        @items << name
        i+=1
      end
    else
      @items << name
    end
    @total += price*items
    @last_trans = @total
    @total
    @transactions << price
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
    self.total = @total - @transactons.pop
  end

end
