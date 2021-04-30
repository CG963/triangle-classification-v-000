class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(name)
    @name = name
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
 
  class PartnerError < StandardError
    def message
    "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end
 
beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
end
