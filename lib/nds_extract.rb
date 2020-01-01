$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp directors_database
def directors_totals(nds)

  result = {}

  row_index = 0 
  while row_index < nds.length do
    element_index = 0 
    sum = 0 
    
    while element_index < nds[row_index][:movies].length do
      sum += nds[row_index][:movies][element_index][:worldwide_gross]
      element_index += 1 
    end 
    result[nds[row_index][:name]] = sum 
    row_index += 1 
  end
  result
  
end
