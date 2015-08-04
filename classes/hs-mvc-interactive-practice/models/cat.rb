class Cat
  attr_reader :name, :color
  attr_accessor :human, :status, :testing

  def initialize(name, color)
    @name = name
    @color = color
    @hypoallergenic = false
    @human = human
    @status = "content"
  end

  def pick_location
    @location.sample
  end

end