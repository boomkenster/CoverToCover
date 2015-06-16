class Goodreads 
  def book_by_title(title)
    book = client.book_by_title(title)
  
    {average_rating : book.average_rating,
     small_url : book.small_image_url,
     name : book.name,
     description : book.description
    }
  end

end