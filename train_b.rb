require './train.rb'

class TrainB < Train
  DISTANCE_FROM_SOURCE = {
    'TVC' => 0,
    'SRR' => 300,
    'MAQ' => 600,
    'MAO' => 1000,
    'PNE' => 1400,
    'HYB' => 2000,
    'NGP' => 2400,
    'ITJ' => 2700,
    'BPL' => 2800,
    'PTA' => 3800,
    'NJP' => 4200,
    'GHY' => 4700
  }
end
