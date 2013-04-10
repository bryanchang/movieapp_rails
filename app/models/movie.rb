require 'open-uri'

class Movie
  attr_accessor :id
  def movie_details(id)
	file = open("http://www.omdbapi.com/?i=#{URI.escape(id)}&r=json")
	JSON.load(file.read)
  end
end
