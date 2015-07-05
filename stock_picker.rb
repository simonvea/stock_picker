#kjøp lav først, selg høg

def stock_picker(prices)
    
    profitt = 0
    bunn_index = 0
    topp_index = 0
    
    prices.each_with_index do |price, index|
        
        priser = prices[index+1..prices.length]
        
        priser.each_with_index do |p, salgsdag|
            
            diff = p - price
        
            if diff > profitt
            
                profitt = diff
            
                bunn_index = index
                topp_index = salgsdag +(index+1) #legger til index+1 for å få indexen til prices
            end
        
        end
        
    end
        
puts "Indeks: [#{bunn_index}, #{topp_index}]"
puts "Kjøpspris #{prices[bunn_index]}, salgspris: #{prices[topp_index]}, med en profitt på #{profitt}."

end

puts "Min test:"
stock_picker([12,13,8,14,15,10,9])
puts "Odin's test:"
stock_picker([17,3,6,9,15,8,6,1,10])
puts "Test med lavest tall på slutten"
stock_picker([9,8,7,6,5,4,3,2,1])
