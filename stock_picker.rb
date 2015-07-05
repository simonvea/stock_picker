#kjøp lav først, selg høg

def stock_picker(prices)
    
    profitt = 0
    bunn_index = 0
    topp_index = 0
    
    prices.each_with_index do |price, index|
        
        priser = prices[index+1..prices.length]
        
        priser.each_with_index |p, i|
            
            diff = p - price
        
            if diff > profitt
            
                profitt = diff
            
                bunn_index = index
                topp_index = i #gir feil index, må ha indexen i prices
            end
        
        end
        
 
       
        
    end
        
puts "Indeks: [#{bunn_index}, #{topp_index}]"
puts "Kjøpspris #{prices[bunn_index]}, salgspris: #{prices[topp_index]}, med en profitt på #{profitt}."

end


stock_picker([12,13,8,14,15,10,9])
