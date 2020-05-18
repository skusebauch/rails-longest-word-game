class GamesController < ApplicationController
  def new
    @letters = (0...10).map { ('a'..'z').to_a[rand(26)] }.join(" ")
    @search_query = params[:words]
    # if @search_query == @letters

  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{@search_query}"
    words = open(url).read
    word = JSON.parse(words)
    word['found']
  end
end
