require './train_a.rb'
require './train_b.rb'

class TrainAB
  attr_accessor :train_a, :train_b

  def initialize(train_a_order, train_b_order)
    @train_a = TrainA.new(train_a_order).output
    @train_b = TrainB.new(train_b_order).output
  end
 
  def output
    result = ['TrainAB', 'ENGINE', 'ENGINE']
    train_ab_boggies = (train_a + train_b).reject { |bogie| ['ENGINE', 'TRAIN_A', 'TRAIN_B'].include?(bogie) }
    return ['JOURNEY_ENDED'] if train_ab_boggies.empty?

    distance_map = TrainA::DISTANCE_FROM_SOURCE.merge(TrainB::DISTANCE_FROM_SOURCE)
    sorted_boggies = train_ab_boggies.sort_by { |bogie| -distance_map.fetch(bogie, Float::INFINITY) }
    result + sorted_boggies
  end
end
