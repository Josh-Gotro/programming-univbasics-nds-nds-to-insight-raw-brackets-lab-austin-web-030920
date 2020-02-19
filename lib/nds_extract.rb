$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  nil
  
  row_index = 0 
  while nds[row_index]  do 
    # cycles through each director's info
    direc = nds[row_index][:name]
    # assigns director name to direc, updates each cycle
   
    key_value = 0 
    d_ww_g = 0 
    while key_value < nds[row_index][:movies].length do
      # cycles through each movie for selected director. 
      
      d_ww_g += nds[row_index][:movies][key_value][:worldwide_gross]
      key_value += 1 
      #sums :worldwide_gross from each title into d_ww_g
  end
  result[direc] = d_ww_g
  row_index += 1 
end  
result
end

