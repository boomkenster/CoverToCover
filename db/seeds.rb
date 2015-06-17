# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  MARKS_LIST = [
    "On Immunity: An Inoculation",
    "Rational Ritual",
    "The End of Power: From Boardrooms to Battlefields and Churches to States, Why Being In Charge Isn’t What It Used to Be",
"    The Better Angels of Our Nature: Why Violence Has Declined", "Gang Leader for a Day: A Rogue Sociologist Takes to the Streets", "The Structure of Scientific Revolutions", "Dealing With China: An Insider Unmasks the New Economic Superpower", "Orwell's Revenge: The 1984 Palimpsest", "The New Jim Crow", "Creativity, Inc.: Overcoming the Unseen Forces That Stand in the Way of True Inspiration"
  ]

  OPRAH_LIST = ["House of Sand and Fog", "Drowning Ruth", "Open House", "The Poisonwood Bible", "While I Was Gone", "The Bluest Eyes", "Back Roads", "Daughter of Fortune", "Gap Creek", "A Fine Balance", "The Corrections", "Cane River", "Stolen Lives: Twenty Years in a Desert Jail", "Icy Sparks", "We Were The Mulvaneys", "Sula", "Fall on Your Knees", "East of Eden", "Cry, The Beloved Country", "One Hundred Years of Solitude", "The Heart is a Lonely Hunter", "Anna Karenina","The Good Earth", "A Million Little Pieces", "As I Lay Dying", "The Sound and the Fury", "A Light in August", "Night", "The Measure of a Man", "The Road", "Middlesex", "Love in the Time of Cholera","The Pillars of the Earth", "A New Earth", "The Story of Edgar Sawtelle", "Say You're One of Them", "Freedom","A Tale of Two Cities", "Great Expectations", "Wild"]


  Booklist.create(name: "Mark's List")
  Booklist.create(name: "Oprah's Club")
  Booklist.create(name: "The Guardian")
  Booklist.create(name: "NYT")

  def find_by_title(title)
    Goodreads.new.book_by_title(title)
  end

  def marks_list
    MARKS_LIST.map do |title|
      find_by_title(title)
    end
  end

  def oprahs_list
    OPRAH_LIST.map do |title|
      find_by_title(title)
    end
  end

  def mark_db
    marks_list.map do |cover|
      Book.create(
        title: cover.title,
        author: cover.authors.author.to_a[1][1],
        description: cover.description,
        image_url: cover.image_url,
        rating: cover.average_rating).booklists << Booklist.find(1)
    end
  end
  

  def oprah_db
    oprah_list.map do |cover|
      Book.create(
        title: cover.title,
        author: cover.authors.author.to_a[1][1],
        description: cover.description,
        image_url: cover.image_url,
        rating: cover.average_rating).booklists << Booklist.find(2)
    end
  end

  mark_db