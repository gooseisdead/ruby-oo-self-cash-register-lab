require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_amount = 0
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end

    @last_transaction_amount = amount * quantity
  end

  def apply_discount
    if discount != 0
      p "After the discount, the total comes to $#{self.total = (total * ((100.0 - discount.to_f)/100)).to_i}."
    else discount = 0
      p "There is no discount to apply."
    end
  end

  def last_transaction_amount=(amount)
    @last_transaction_amount = amount
  end

  def last_transaction_amount
    @last_transaction_amount
  end

  def void_last_transaction
    @total -= last_transaction_amount
  end
end 

# require 'pry'

# class CashRegister

#     def initialize(discount=0)
#         @items = []
#         @total = 0 
#         @discount = discount
#         @last_transacted_amount = 0
#     end

#     def total=(value)
#         @total = value
#       end
    
#       def discount=(value)
#         @discount = value
#       end
    
#       def discount
#         @discount
#       end
    
#       def total
#         @total
#       end

#       def add_item(title, amount, quantity=1)
#         self.total += amount * quantity
#         quantity.times do
#           items << title
#         end
    
#         self.last_transaction_amount = amount * quantity
#       end



# end
