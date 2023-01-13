class Mapquest
  attr_reader :distance, :time, :directions

  def initialize(attributes)
    @distance = attributes[:distance]
    @time = attributes[:formattedTime]
    @directions = create_directions(attributes[:legs][0][:maneuvers])
  end

  def create_directions(directions)
    array_directions = []
    directions.each do |maneuver|
      maneuver.each do |k,v|
        array_directions << v if k == :narrative
      end
    end
    array_directions
  end
end