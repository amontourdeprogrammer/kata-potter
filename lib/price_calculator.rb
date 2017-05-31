module PriceCalculator 

	UNIT_PRICE = 8

	def checkout(books)
		books.count * UNIT_PRICE
	end
	
end