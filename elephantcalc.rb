continue = true
    quantity = 0
    price = 0
    selection = 0

while continue ==true
	puts"enter price"
    price = gets.chomp

    puts "Enter a quantity"
    quantity =gets.chomp

     selection = price.to_f * quantity.to_f

     puts "Quantity = #{quantity} price = #{price} subtotal = #{selection}"
    if quantity.to_i == 0
    	break
    end
 end