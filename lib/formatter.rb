require_relative './checkout'

class Formatter

  def format_total(total)
     "£%.2f" % total
  end

end
