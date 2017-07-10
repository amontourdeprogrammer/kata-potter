require 'price_calculator'

include PriceCalculator

describe PriceCalculator do

	it "returns 0 when user buy no books" do
		books = []
		expect(checkout(books)).to eql(0)
	end

	it "returns 8 when user buy one book" do
		book_id = 1
		expect(checkout([book_id])).to eql(UNIT_PRICE)
	end

  it "applies a 5% discount when user buy 2 different books" do
    books = [1, 2]
    expect(checkout(books)).to eql(2 * UNIT_PRICE * 0.95)
  end

  it "returns right price when user buys 2 copies of one book and another" do
    books = [1, 2, 2]
    expect(checkout(books)).to eql(2 * UNIT_PRICE * 0.95 + UNIT_PRICE)
  end
end
