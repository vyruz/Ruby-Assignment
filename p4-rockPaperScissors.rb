#!/usr/bin/ruby

#part 4

# a
class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end
def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  valid = /[rps]/
  m1 = game[0][1].downcase #player 1's move
  m2 = game[1][1].downcase #player 2's move
  raise NoSuchStrategyError unless (m1 =~ valid) && (m2 =~ valid)
  if (m1 == "r" && m2 == "s") || (m1 == "p" && m2 == "r") || (m1 == "s" && m2 == "p")
    return game[0]
  else
    return game[1]
  end
end

game = [ ["Armando", "P"], ["Dave", "S"] ]

puts rps_game_winner(game)

# b

def tournament(tourny)
  if(tourny[0][1].class == String) #at depest level and can rps
    return rps_game_winner(tourny)
  else
    w1 = tournament(tourny[0])
    w2 = tournament(tourny[1])
    tournament([w1, w2])
  end
end

tarr = [ [ [ ["Armando", "P"], ["Dave", "S"] ], [ ["Richard", "R"],  ["Michael", "S"] ],    ],    [        [ ["Allen", "S"], ["Omer", "P"] ],        [ ["David E.", "R"], ["Richard X.", "P"] ] ] ]

print tournament(tarr), "\n"
