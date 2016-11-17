class StaticController < ApplicationController
	def index
		@quote = Quote.get_random_quote
		@movies = Movie.where(classic: false)
		@classics = Movie.where(classic: true)
	end
end
