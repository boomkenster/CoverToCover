class NytService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new('http://api.nytimes.com/svc/books/v3/lists')
  end

  def best_seller
    connection.get(".response_format]?{search-param1=value1}&[...]&[optional-param1=value1]&[...]&api-key={#{ENV["NYT_KEY"]}}")
  end

  def time_best_seller
    time = (Time.now - 30.days).strftime("%Y-%m-%e")
    time.gsub!(" ", "0")
    JSON.parse(connection.get("http://api.nytimes.com/svc/books/v3/lists/overview.json?callback=books&published_date=#{time}&api-key=#{URI.escape(ENV["NYT_KEY"])}").body, symbolize_names: true)
  end

  # response["results"]["lists"]


end
