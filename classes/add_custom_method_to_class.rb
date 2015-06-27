## adding a custom method to Ruby's premade Array class. 
  #Adding a method here will apply to ALL arrays in your program. 

class Array
  
  def say_items
    puts "The items in this array are:"
    self.each do |item|
      puts item
    end
  end
  
end

sumtin = ["Hey", "sup", "what up"]

sumtin.say_items