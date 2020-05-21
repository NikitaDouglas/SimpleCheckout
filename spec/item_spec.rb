require 'item'

describe Item do
  let(:item) {Item.new("apple",0.40)}

  it 'allows the shopper to check the price of an item' do
    expect(item.check_price).to eq(0.4) 
  end

end
