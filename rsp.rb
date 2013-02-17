#!/usr/bin/env ruby

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	game.each do |i|
		raise NoSuchStrategyError unless ["R", "P", "S"].any? { |s| s.casecmp(i[1]) == 0}
	end
	if game[0][1] == game[1][1]
		return game[0]
	end
	rule={"R"=>"S", "S"=>"P", "P"=>"R"}
	if rule[game[1][1].upcase] == game[0][1].upcase
		return game[1]
	else
		return game[0]
	end
end

puts rps_game_winner([["Armando", "P"], ["Dave", "S"]])
