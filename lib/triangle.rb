class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end


  def kind
    any_side_is_zero_or_negative = side1 <= 0 || side2 <= 0 || side3 <= 0
    triangle_inequality_is_false = side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1

    if any_side_is_zero_or_negative || triangle_inequality_is_false
      raise TriangleError
    end

    if side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      :isosceles
    else
      :scalene
    end

  end
  

  class TriangleError < StandardError
  end

end

