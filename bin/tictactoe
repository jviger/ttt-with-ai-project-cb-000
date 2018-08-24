#!/usr/bin/env ruby

require_relative '../config/environment'

puts "Would you like to play with 0, 1 or 2 players?"
num_players = gets

case num_players
when 0
  player_1_type = Players::Computer
  player_2_type = Players::Computer
when 1
  player_2_type = Players::Computer
else
  player_1_type = Players::Human
  player_2_type = Players::Human
end


player_1_token = "X"
player_2_token = "O"
puts "Which player should be X?"
player_x = gets
if (player_x == "2") 
player_1_token, player_2_token = player_2_token, player_1_token
end


game = Game.new(player_1_type.new(player_1_token), player_2_type.new(player_2_token), Board.new)
game.play

