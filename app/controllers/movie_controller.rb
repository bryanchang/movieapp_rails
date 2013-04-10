class MovieController < ApplicationController
	def home
	end

	def search
		@q = params[:q] # q stands for query
		s = MovieSearch.new # s stands search
		@results = s.movie_search(@q)
	end

	def movie
		@id = params[:id]
		m = Movie.new
		@details = m.movie_details(@id)
	end

end
