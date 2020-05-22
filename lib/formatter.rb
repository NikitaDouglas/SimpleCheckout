require_relative './checkout'

class Formatter

  def format(total)
     "£%.2f" % total
  end

end
