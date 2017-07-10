module PriceCalculator

	UNIT_PRICE = 8

	def checkout(books)
    sum = 0

    while books.count > 0 do
      nb_distinct_books = books.uniq.count
      sum += nb_distinct_books * UNIT_PRICE * discount(nb_distinct_books)

      remove(books.uniq, books)
    end
    sum
  end

  def discount(nb_distinct_books)
    case nb_distinct_books
    when 2
      0.95
    else
      1
    end
  end

  def remove(subarray, array)
    subarray.each do |element|
      element_index = array.index(element)
      array.delete_at(element_index)
    end
  end
end
