$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # Be sure to return the result at the end!
  #nil
  vm = directors_database
  result={} ; inner_index = 0 ; outer_index = 0 ; gross_for_current_director = 0 
  
  while outer < vm.length do
    current_director = vm[outer_index][:name]
    while inner_index < vm[outer_index][:movies].length do
      gross_for_current_director += vm[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1 
    end
    result[current_director]=gross_for_current_director
    inner = 0 
    gross_for_current_director = 0 
    outer_index += 1 
  end

  return result
end

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

#pretty_print_nds(directors_database)
p directors_totals(directors_database)