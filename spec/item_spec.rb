# frozen_string_literal: true

require 'item'

describe Item do
  let(:item) { Item.new('apple', 0.40) }
  let(:checkout_double) { double(:checkout) }

  it 'allows the shopper to check the price of an item' do
    expect(item.check_price).to eq(0.4)
  end

  it 'allows the shopper to scan at item at the checkout' do
    allow(checkout_double).to receive(:scan_item) { 'Item scanned' }
    expect(item.buy_item(checkout_double)).to eq('Item scanned')
  end
end
