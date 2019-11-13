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
  result={}
  vm = directors_database
  inner = 0 
  outer = 0 
  result_for_current_dir = 0 
  
  #i = 0 
  #while i < vm[0][:movies].length do
  #  puts vm[0][:movies][i][:title].to_s
  #  i=i+1 
  #end
  
  while outer < vm.length do
    current_dir = vm[outer][:name]
    #puts current_dir
    while inner < vm[outer][:movies].length do
      #puts vm[outer][inner][:movies]
      result_for_current_dir = result_for_current_dir + vm[outer][:movies][inner][:worldwide_gross]
      inner = inner + 1 
    end
    puts current_dir + result_for_current_dir.to_s
    #result.merge({:current_dir=>result_for_current_dir})
    result[current_dir]=result_for_current_dir
    #p result
    #puts result
    inner = 0 
    result_for_current_dir = 0 
    outer = outer + 1 
  end
  
  #p result
  return result
end

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

#pretty_print_nds(directors_database)
p directors_totals(directors_database)