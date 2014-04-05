class Footprint
  # 0 <= x <= 1, 0 <= y <= 1
  attr_reader :coordinates

  def initialize
    @coordinates = []
    set_start_coordinate
    set_random_coordinates
    set_finish_coordinate
  end

  private

  def set_start_coordinate
    coordinate_at_top = [rand, 0]
    coordinate_at_left = [0, rand]
    @coordinates << [coordinate_at_top, coordinate_at_left].sample
  end

  def set_random_coordinates
    rand(1..10).times do
      @coordinates << [rand, rand]
    end
  end

  def set_finish_coordinate
    coordinate_at_bottom = [rand, 1]
    coordinate_at_right = [1, rand]
    @coordinates << [coordinate_at_bottom, coordinate_at_right].sample
  end
end
