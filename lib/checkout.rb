class Checkout
  attr_reader :total

  def initialize
    @total = 0
  end

  def scan(item)
    @total += item.check_price
    "Item scanned"
  end

  def see_total
    format_total
  end

  private

  def format_total
     "£%.2f" % @total
  end
end
