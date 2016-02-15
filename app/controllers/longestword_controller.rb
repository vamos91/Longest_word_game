require 'game'

class LongestwordController < ApplicationController
  def game
    grid = generate_grid(9)
    @grille = grid.join(" ")
    @start_time = Time.now
  end

  def score
    @user_word = params[:user_word]

    @start_time_s = params[:start_time]
    @start_time = @start_time_s.to_time

    @grille = params[:grille].split(' ')
    @end_time = Time.now
    @result = run_game(@user_word, @grille, @start_time, @end_time)
    @result_time = @result[:time]
    @result_translation = @result[:translation]
    @result_score = @result[:score]
    @result_message = @result[:message]
  end


end
