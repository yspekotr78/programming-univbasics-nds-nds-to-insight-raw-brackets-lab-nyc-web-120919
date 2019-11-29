$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # directors_database[row_index][:movies][column_index][:worldwide_gross]
result = {}
row_index = 0
	
while row_index < nds.length do
  director_name = nds[row_index][:name]
  #puts director_name
  column_index = 0
  total_gross = 0
  while column_index < nds[row_index][:movies].length do
    total_gross += nds[row_index][:movies][column_index][:worldwide_gross]
    column_index += 1
  end
  result << director_name
  #result[director_name] = total_gross
  row_index += 1
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
