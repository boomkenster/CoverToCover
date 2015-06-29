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

  MARC_A = ["Capitalism, Socialism, and Democracy: Third Edition", "Recent economic changes, and their effect on the production and distribution of wealth and the well-being of society","The Federal Reserve and the Financial Crisis", "A Great Leap Forward: 1930s Depression and U.S. Economic Growth", "This Time Is Different: Eight Centuries of Financial Folly"]

  BEN_H = ["The Innovator’s Dilemma", "The Black Jacobins", "Only the Paranoid Survive","Focus","My Years at GM", "The Black Jacobins"]

  LARRY_PAGE = ["Snow Crash", "Pleasure of Finding Things Out", "QED: The Strange Theory of Light and Matter", "What Do You Care What Other People Think?", "Surely You're Joking, Mr. Feynman!", "My Inventions: The Autobiography of Nikola Tesla"]

  JEFF_BEZOS = ["The Remains of the Day", "Sam Walton: Made in America", "Memos from the Chairman", "The Mythical Man-Month", "Built to Last: Successful Habits of Visionary Companies", "Good to Great: Why Some Companies Make the Leap… and Others Don't", "Creation: Life and How to Make It", "The Innovator's Dilemma", "The Goal: A Process of Ongoing Improvement", "Lean Thinking: Banish Waste and Create Wealth in Your Corporation", "Data-Driven Marketing: The 15 Metrics Everyone in Marketing Should Know", "The Black Swan"]

  STEVE_JOBS = ["King Lear", "Moby Dick", "The Collected Poems of Dylan Thomas", "Be Here Now", "Diet for a Small Planet", "Mucusless Diet Healing System", "Autobiography of a Yogi", "Zen Mind, Beginner's Mind", "The Innovator's Dilemma"]

  BILL_GATES = ["Tap Dancing to Work: Warren Buffett on Practically Everything, 1966-2012", "Making the Modern World: Materials and Dematerialization", "The Sixth Extinction: An Unnatural History", "Stress Test: Reflections on Financial Crises", "The Better Angels of Our Nature: Why Violence Has Declined", "The Man Who Fed the World", "Business Adventures: Twelve Classic Tales from the World of Wall Street", "The Bully Pulpit: Theodore Roosevelt, William Howard Taft, and the Golden Age of Journalism", "The Rosie Project: A Novel"]

  PETER_THIEL = ["The Black Swan", "New Atlantis", "The American Challenge", "The Right Stuff", "The Sovereign Individual", "The Diamond Age", "100 Plus", "Bloodlands", "Resurrection from the Underground"]

PEOPLE = [MARKS_LIST, OPRAH_LIST, MARC_A, BEN_H, LARRY_PAGE, JEFF_BEZOS, STEVE_JOBS, BILL_GATES, PETER_THIEL]

  Booklist.create(name: "Mark's List")
  Booklist.create(name: "Steve Jobs")
  Booklist.create(name: "Marc Add")
  Booklist.create(name: "Ben Horo")  
  Booklist.create(name: "Larry Page")
  Booklist.create(name: "Jeff Bezos")
  Booklist.create(name: "Peter Thiel")  
  Booklist.create(name: "Bill Gates")
  Booklist.create(name: "Oprah's Club")


  # def find_by_title(title)
  #   Goodreads.new.book_by_title(title)
  # end

  # def marks_list
  #   MARKS_LIST.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def steves_list
  #   STEVE_JOBS.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def marcadd_list
  #   MARC_A.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def bens_list
  #   BEN_H.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def larrys_list
  #   LARRY_PAGE.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def jeffs_list
  #   JEFF_BEZOS.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def peters_list
  #   PETER_THIEL.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def bills_list
  #   BILL_GATES.map do |title|
  #     find_by_title(title)
  #   end
  # end


  # def oprahs_list
  #   OPRAH_LIST.map do |title|
  #     find_by_title(title)
  #   end
  # end

  # def mark_db
  #   marks_list.map do |cover|
  #     Book.create(
  #       title: cover.title,
  #       author: cover.authors.author.to_a[1][1],
  #       description: cover.description,
  #       image_url: cover.image_url,
  #       rating: cover.average_rating).booklists << Booklist.find(1)
  #   end
  # end

  # def steve_db
  #   steves_list.map do |cover|
  #     Book.create(
  #       title: cover.title,
  #       author: cover.authors.author.to_a[1][1],
  #       description: cover.description,
  #       image_url: cover.image_url,
  #       rating: cover.average_rating).booklists << Booklist.find(2)
  #   end
  # end

  # def marcadd_db
  #   marcadd_list.map do |cover|
  #     Book.create(
  #       title: cover.title,
  #       author: cover.authors.author.to_a[1][1],
  #       description: cover.description,
  #       image_url: cover.image_url,
  #       rating: cover.average_rating).booklists << Booklist.find(3)
  #   end
  # end

  # def ben_db
  # bens_list.map do |cover|
  #   Book.create(
  #     title: cover.title,
  #     author: cover.authors.author.to_a[1][1],
  #     description: cover.description,
  #     image_url: cover.image_url,
  #     rating: cover.average_rating).booklists << Booklist.find(4)
  #     end
  #   end

  # def larry_db
  # larrys_list.map do |cover|
  #   Book.create(
  #     title: cover.title,
  #     author: cover.authors.author.to_a[1][1],
  #     description: cover.description,
  #     image_url: cover.image_url,
  #     rating: cover.average_rating).booklists << Booklist.find(5)
  #     end
  #   end

  # def jeff_db
  # jeffs_list.map do |cover|
  #   Book.create(
  #     title: cover.title,
  #     author: cover.authors.author.to_a[1][1],
  #     description: cover.description,
  #     image_url: cover.image_url,
  #     rating: cover.average_rating).booklists << Booklist.find(6)
  #     end
  #   end

  # def peter_db
  # peters_list.map do |cover|
  #   Book.create(
  #     title: cover.title,
  #     author: cover.authors.author.to_a[1][1],
  #     description: cover.description,
  #     image_url: cover.image_url,
  #     rating: cover.average_rating).booklists << Booklist.find(7)
  #     end
  #   end

  # def bill_db
  # bills_list.map do |cover|
  #   Book.create(
  #     title: cover.title,
  #     author: cover.authors.author.to_a[1][1],
  #     description: cover.description,
  #     image_url: cover.image_url,
  #     rating: cover.average_rating).booklists << Booklist.find(8)
  #     end
  #   end

  # def oprah_db
  #   oprahs_list.map do |cover|
  #     Book.create(
  #       title: cover.title,
  #       author: cover.authors.author.to_a[1][1],
  #       description: cover.description,
  #       image_url: cover.image_url,
  #       rating: cover.average_rating).booklists << Booklist.find(9)
  #   end
  # end

  # mark_db
  # steve_db
  # marcadd_db
  # ben_db
  # larry_db
  # jeff_db
  # peter_db
  # bill_db
  # oprah_db

def book_info
  @book_data = PEOPLE.map do |person|
    person.map do |title|
      finy_by_title(title)
    end
  end
end

def create_lists
  @book_data.each_with_index do |cover, index|
    Book.create(
      title: cover.title,
      author: cover.authors.author.to_a[1][1],
      description: cover.description,
      image_url: cover.image_url,
      rating: cover.average_rating).booklists << Booklist.find(index)
    end
end

