module PriceCalculator

	UNIT_PRICE = 8

	def checkout(books)
    nb_distinct_books = books.uniq.count
    nb_left_books = books.count - nb_distinct_books
		nb_distinct_books * UNIT_PRICE * discount(nb_distinct_books) + nb_left_books * UNIT_PRICE
  end

  def discount(nb_distinct_books)
    case nb_distinct_books
    when 2
      0.95
    else
      1
    end
  end
end
