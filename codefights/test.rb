# def multiplicationTable(n)
#   return (1..n).map{|el|(1..n).map{|x|x*el}}
# end

# p multiplicationTable(5)

def solve(year)
  # Complete this function
  ((year % 400 == 0) || (year % 4 == 0 && (year % 100 != 0)) ) ?  "12.09.#{year}" : "13.09.#{year}"
end

# p solve(1700)
def russianRoulette(cylinder, startingCylinder, startingPlayer, players)
  return players if players.length == 1
  cylinder = cylinder.rotate(startingCylinder)
  j = players.index(startingPlayer)
  i = 0
  while i < cylinder.length && players.length > 1
    j %= players.length if j >= players.length
    result = cylinder[i]
    i += 1
    if result == 'b'
        # p j
        # p players
        players = players[0...j] + players[j+1..-1]
        next
    end
    p 'here'
    j += 1
    # p i
      
  end
  players
      
  
end

cylinder = ["b", "e", "e", "e", "e", "b", "b"]
startingCylinder = 0
startingPlayer = "kenny"
# players = ["bebe", "eric", "stan", "kenny"]
# p russianRoulette(cylinder, startingCylinder, startingPlayer, players)
# p cylinder[1..-1] 
a = ['a', 'b']
p a[1] == 'b'