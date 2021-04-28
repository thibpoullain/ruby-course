require_relative './so_class'

module Geometry
  VERSION = '0.0.1'

  def self.distance(p1, p2)
    return false unless (p1.is_a?(Point) && (p2.is_a?(Point)))
    Math.sqrt((p2.x - p1.x) ** 2 + (p2.y - p1.y) ** 2)
  end


  module LineDetector
    def line?
      @array_points.length == 2
    end
  end

  module TriangleDetector
    def triangle?
      @array_points.length == 3
    end
  end

  class Shape
    include Geometry::LineDetector
    include Geometry::TriangleDetector

    def initialize(array_points = [])
      @array_points = array_points
    end

    def points
      @array_points.compact
    end

    def add_point(point)
      @array_points << point
    end

    def remove_point(point)
      @array_points.delete(point)
    end
  end

end