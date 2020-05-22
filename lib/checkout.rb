require_relative './formatter'

class Checkout
  attr_reader :total

  def initialize(formatter = Formatter.new)
    @total = 0
    @formatter = formatter
  end

  def scan(item)
    @total += item.check_price
    "Item scanned"
  end

  def see_total
    @formatter.format(@total)
  end

  # def format_total
  #    "£%.2f" % @total
  # end
end
