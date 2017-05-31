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
end