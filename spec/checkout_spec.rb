require 'checkout'

describe Checkout do
  let(:checkout) { Checkout.new }
  let(:item_double) { double(:item) }

  describe '#scan_item' do
    it 'adds the price to total' do
      allow(item_double).to receive(:check_price) {0.4}
      expect { checkout.scan(item_double) }
      .to change {checkout.total}.by(0.4)
    end
  end

  describe '#see_total' do
    it 'allows the shopper to see the total' do
      allow(item_double).to receive(:check_price) {0.4}
      checkout.scan(item_double)
      expect(checkout.see_total).to eq(0.4)
    end
  end
end
