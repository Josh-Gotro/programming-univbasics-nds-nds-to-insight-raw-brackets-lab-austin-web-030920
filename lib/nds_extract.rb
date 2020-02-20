$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  nil
  
  row_index = 0 
  while nds[row_index]  do 
    direc = nds[row_index][:name]
    
    key_value = 0 
    d_ww_g = 0 
    while key_value < nds[row_index][:movies].length do
      d_ww_g += nds[row_index][:movies][key_value][:worldwide_gross]
      key_value += 1 
     
  end
  result[direc] = d_ww_g
  row_index += 1 
end  
result
end

