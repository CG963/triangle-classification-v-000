class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(side1, side2, side3)
    if side1 >= (side2 + side3) ||
  end
 
  def kind()
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error 
        puts error.message
      end 
    else
      person.partner = self
    end
  end
 
  class TriangleError < StandardError
    def message
    "you can not make a triangle like that!"
    end
  end
end
