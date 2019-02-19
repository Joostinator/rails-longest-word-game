require 'open-uri'

class GamesController < ApplicationController
  def new
  @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @letter = params(:letters)
    @word = params(:longest_word)
    @dict = url('https://wagon-dictionary.herokuapp.com/#{@word}')

    @found = true

  end
end
