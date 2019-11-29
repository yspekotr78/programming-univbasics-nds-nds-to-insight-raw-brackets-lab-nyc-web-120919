$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  # directors_database[name_index][:movies][movie_index][:worldwide_gross]
result = {}
name_index = 0
while name_index < nds.length do
  director_name = nds[name_index][:name]
  movie_index = 0
  total_gross = 0
  while movie_index < nds[name_index][:movies].length do
    total_gross += nds[name_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  result[director_name] = total_gross
  p total_gross
  name_index += 1
end
puts result
return result

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #  nil
  
end
