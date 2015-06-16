require 'goodreads'

Goodreads.configure(
  api_key: ENV['GOODREADS_KEY'],
  api_secret: ENV['GOODREADS_SECRET']
)


# Goodreads.configure do |config|
# config.client_id = ENV["GOODREADS_KEY"]

# config.client_secret = ENV["GOODREADS_SECRET"]

# end