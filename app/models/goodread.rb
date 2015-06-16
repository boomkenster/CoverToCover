class GoodreadsService

  def initialize
    data = {}
  end

  def find_by_title(title)
  book = Goodsreads.new.book_by_title(title)

  data = {average_rating: book.average_rating,
   small_url: book.small_image_url,
   authors: book.authors,
   name: book.name,
   description: book.description
  }
  end

end