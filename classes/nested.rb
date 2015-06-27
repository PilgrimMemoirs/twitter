#Nested Array
donuts = [["chocolate glazed", "cinnamon", "Jelly filled"],["Pistachio", "Green Tea", "Peach bellini"],["glaze", "powdered"]]

#puts donuts[1][1] #Green Tea
#puts donuts[1][0]

#Nested Hash
donut_shops = {
  :dunkin => {:latte => "powdered", :iced_coffee => "diabetus"},
  :firecakes => {:americano => "peanut butter", :dopio => "honey"}
  }

puts donut_shops[:firecakes].select { |k,v| k == :dopio} 
puts donut_shops[:dunkin].select {|k,v| k == :latte}


#NESTED EVERYTHING