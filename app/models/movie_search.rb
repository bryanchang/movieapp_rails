require 'open-uri'

class MovieSearch 
  attr_accessor :q
  def movie_search(q)
	file = open("http://www.omdbapi.com/?s=#{URI.escape(q)}&r=json")
	JSON.load(file.read)
  end
end
