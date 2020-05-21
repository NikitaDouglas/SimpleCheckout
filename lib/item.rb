# frozen_string_literal: true

class Item
  def initialize(name, price)
    @name = name
    @price = price
  end

  def check_price
    @price
  end

  def buy_item(checkout)
    checkout.scan_item(self)
  end
end
