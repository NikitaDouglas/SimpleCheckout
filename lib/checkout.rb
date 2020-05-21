class Checkout

attr_reader :total

  def initialize
    @total = 0
  end

  def scan(item)
    @total += item.check_price
  end

  def see_total
    @total
  end
end
