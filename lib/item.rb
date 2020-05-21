require_relative './checkout'

class Item
  def initialize(name, price)
    @name = name
    @price = price
  end

  def check_price
    @price
  end

  def buy_item(checkout)
    checkout.scan(self)
  end
end
