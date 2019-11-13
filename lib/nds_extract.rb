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
  result={} ; inner = 0 ; outer = 0 ; result_for_current_dir = 0 
  
  while outer < vm.length do
    current_dir = vm[outer][:name]
    while inner < vm[outer][:movies].length do
      result_for_current_dir += vm[outer][:movies][inner][:worldwide_gross]
      inner += 1 
    end
    result[current_dir]=result_for_current_dir
    inner = 0 
    result_for_current_dir = 0 
    outer += 1 
  end

  return result
end

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

#pretty_print_nds(directors_database)
p directors_totals(directors_database)