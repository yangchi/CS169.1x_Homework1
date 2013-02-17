#!/usr/bin/env ruby

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

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

def rps_tournament_winner(tournament)
	if tournament[0][0].class==String
		return rps_game_winner(tournament)
	else
		return rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
end

