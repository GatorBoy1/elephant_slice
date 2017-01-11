def subtotal_calc(price, quantity)
   price.to_f * quantity.to_f
end # subtotal calc

def discount(grand_total)

	if grand_total > 999

			if grand_total >=1000 && grand_total <=4999
				discount_rate = 0.03
			elsif grand_total >=5000 && grand_total <= 6999
				discount_rate = 0.05
			elsif grand_total >=7000 && grand_total<= 9999
				discount_rate = 0.1
			else grand_total >= 1000 && grand_total<= 50000
				discount_rate = 0.12
			end #nested if

			total_discount = grand_total * discount_rate

			
	else
		total_discount = 0

	end #end if
	total_discount
end # discount function	continue = true

def tax_rate(tax_code)
		if tax_code == "UT"
			tax_rate = 0.0685 #	UT 6.85
		elsif tax_code == "NV"
			tax_rate = 0.08 # NV 8.00
		elsif tax_code == "TX"
			tax_rate = 0.0625 # 
		elsif tax_code == "AL"
			tax_rate == 0.04 # AL 4.00
		elsif tax_code =="CA"
			tax_rate = 0.0825 #  CA 8.25
		end
end #tax_rate
    quantity = 0
    price = 0
  	subtotal = 0
    grand_total = 0
    discount_rate = 0
    tax_rate = 0
    total_discount =0
    tax_code =""
    sales_tax = 0
    continue = true

while continue ==true
	puts"enter price"
    price = gets.chomp

    puts "Enter a quantity"
    quantity =gets.chomp

    #subtotal_calc(price, quantity)
     
    if quantity.to_f == 0
    	break
    end
    subtotal =subtotal_calc(price, quantity)
    grand_total = grand_total + subtotal
	puts "Quantity = #{quantity} price = #{price} subtotal = #{subtotal}		grand total #{grand_total}"
 end

 
puts """
	Enter your state tax code 
	UT 	Utah
	NV 	Nevada
	TX 	Texas
	AL 	Alabama
	CA 	California"""
tax_code = gets.chomp.upcase
puts tax_code

total_discount = discount(grand_total)

puts "Total before discount #{grand_total}"

	grand_total = grand_total - discount(grand_total)
puts "Total discount #{total_discount}"	
puts "Total after discount #{grand_total}"


sales_tax = grand_total * tax_rate(tax_code)

puts "Sales Tax total is #{sales_tax}"
puts "Final total #{grand_total + sales_tax}"