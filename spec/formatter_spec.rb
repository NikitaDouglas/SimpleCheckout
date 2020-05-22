require 'formatter'

describe Formatter do
  #let(:checkout_double) { double(:checkout) }
  let(:formatter) { Formatter.new }

  describe '#format(total)'
    it 'should format the total price as £XX.XX' do
      expect(formatter.format(0.4)).to eq('£0.40')
    end
end
