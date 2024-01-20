class Train
  attr_accessor :boggie_order
  
  def initialize(boggie_order)
    @boggie_order = boggie_order.split(' ')
  end

  def station_distance(station_name)
    distance_map[station_name]
  end

  def distance_map
    self.class::DISTANCE_FROM_SOURCE
  end

  def output
    distance_map.each do |station, distance|
      boggie_order.delete(station) if boggie_order.include?(station) && (distance < station_distance('HYB'))
    end
    boggie_order
  end
end
