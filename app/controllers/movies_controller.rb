class MoviesController < ApplicationController

  def index

      @movies = Movie.all.limit(20)
      @times = Showtime.all

  end




end
