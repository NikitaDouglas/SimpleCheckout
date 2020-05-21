require 'checkout'

describe Checkout do
  let(:checkout) { Checkout.new }
  let(:item_double) { double(:item) }

  describe '#scan_item' do
    it 'adds the price to total' do
      allow(item_double).to receive(:check_price) { 0.4 }
      expect { checkout.scan(item_double) }
        .to change { checkout.total }.by(0.4)
    end
  end

  describe '#see_total' do
    it 'allows the shopper to see the total' do
      [0.4, 5.6, 3.0].each do |price|
        allow(item_double).to receive(:check_price) { price }
        expect { checkout.scan(item_double) }
          .to change{ checkout.see_total }.by(price)
      end
    end
  end
end