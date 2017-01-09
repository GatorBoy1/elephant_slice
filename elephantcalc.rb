def inputs

    quantity = 0
    price = 0
    selection = 0

    puts"enter price"
    price = gets.chomp

    puts "Enter a quantity"
    quantity =gets.chomp
    
    price = price.to_i
    quantity = quantity.to_i
        
    if quantity != 0
        selection = price.to_i * quantity.to_i
     
    end 

end
quantity= -1

while quantity !=0 do
    inputs
    puts "Quantity = #{quantity} price = #{price} subtotal = #{selection}"
    end