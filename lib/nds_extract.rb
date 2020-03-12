$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  pp director_data
  gross_total = 0 
  row_index = 0 
  while row_index < directors_database[0].length do 
    
    column_index = 0 
    while column_index < row_index do
      
      inner_index = 0 
      while inner_index < row_index[column_index] do
        
        gross_total += directors_database[0][:movies][0][:worldwide_gross] + directors_database[0][:movies][1][:worldwide_gross] + directors_database[0][:movies][2][:worldwide_gross] + directors_database[0][:movies][3][:worldwide_gross] + directors_database[0][:movies][4][:worldwide_gross] + directors_database[0][:movies][5][:worldwide_gross]
        
      inner_index += 1 
      end 
    column_index += 1 
    end 
  row_index += 1 
  end
 gross_total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
 
   grand_total = {
            {:name =>
            "#{nds[0][:name]}", 
            :movies => [nds[0][:movies][0][:worldwide_gross] + nds[0][:movies][1][:worldwide_gross] + nds[0][:movies][2][:worldwide_gross] + nds[0][:movies][3][:worldwide_gross] + nds[0][:movies][4][:worldwide_gross] + nds[0][:movies][5][:worldwide_gross]]} 
            {:name =>
            "#{nds[1][:name]}",
             :movies =>  [nds[1][:movies][0][:worldwide_gross] + nds[1][:movies][1][:worldwide_gross] + nds[1][:movies][2][:worldwide_gross] + nds[1][:movies][3][:worldwide_gross] + nds[1][:movies][4][:worldwide_gross] + nds[1][:movies][5][:worldwide_gross]]}
            {:name =>
            "#{nds[2][:name]}",
             :movies => [nds[2][:movies][0][:worldwide_gross] + nds[2][:movies][1][:worldwide_gross] + nds[2][:movies][2][:worldwide_gross] + nds[2][:movies][3][:worldwide_gross] + nds[2][:movies][4][:worldwide_gross] + nds[2][:movies][5][:worldwide_gross] + nds[2][:movies][6][:worldwide_gross]]}
            {:name => 
            "#{nds[3][:name]}",
             :movies => [nds[3][:movies][0][:worldwide_gross] + nds[3][:movies][1][:worldwide_gross] + nds[3][:movies][2][:worldwide_gross] + nds[3][:movies][3][:worldwide_gross] + nds[3][:movies][4][:worldwide_gross]]}
            {:name => 
            "#{nds[4][:name]}",
             :movies => [nds[4][:movies][0][:worldwide_gross] + nds[4][:movies][1][:worldwide_gross] + nds[4][:movies][2][:worldwide_gross] + nds[4][:movies][3][:worldwide_gross] + nds[4][:movies][4][:worldwide_gross] + nds[4][:movies][5][:worldwide_gross]]}
            {:name => 
            "#{nds[5][:name]}",
             :movies => [nds[5][:movies][0][:worldwide_gross] + nds[5][:movies][1][:worldwide_gross] + nds[5][:movies][2][:worldwide_gross] + nds[5][:movies][3][:worldwide_gross] + nds[5][:movies][4][:worldwide_gross] + nds[5][:movies][5][:worldwide_gross]]}
            {:name => 
            "#{nds[6][:name]}",
             :movies => [nds[6][:movies][0][:worldwide_gross] + nds[6][:movies][1][:worldwide_gross] + nds[6][:movies][2][:worldwide_gross] + nds[6][:movies][3][:worldwide_gross] + nds[6][:movies][4][:worldwide_gross] + nds[6][:movies][5][:worldwide_gross]]}
            {:name =>
            "#{nds[7][:name]}",
             :movies => [nds[7][:movies][0][:worldwide_gross] + nds[7][:movies][1][:worldwide_gross] + nds[7][:movies][2][:worldwide_gross] + nds[7][:movies][3][:worldwide_gross] + nds[7][:movies][4][:worldwide_gross] + nds[7][:movies][5][:worldwide_gross]]}
            {:name =>
            "#{nds[8][:name]}",
             :movies => [nds[8][:movies][0][:worldwide_gross] + nds[8][:movies][1][:worldwide_gross] + nds[8][:movies][2][:worldwide_gross] + nds[8][:movies][3][:worldwide_gross] + nds[8][:movies][4][:worldwide_gross] + nds[8][:movies][5][:worldwide_gross]]}
            }
          }
end 

