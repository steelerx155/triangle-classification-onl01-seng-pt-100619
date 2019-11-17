class Triangle
  attr_reader :e, :i, :s
  def initialize(e, i, )
    @e = e
    @i = i
    @s = s
  end

  def kind
    triangle_type
    if e == i && i == s
      :equilateral
    elsif e == i || i == s || e == s
      :isosceles
    else
      :scalene
    end
  end

  def triangle_type
    triangle = [(e + i > s), (e + s > i), (i + s > e)]
    [e, i, s].each do |side|
      triangle << false if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end

end

