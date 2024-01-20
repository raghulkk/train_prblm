require './train.rb'

class TrainA < Train
  DISTANCE_FROM_SOURCE = {
    'CHN' => 0,
    'SLM' => 350,
    'BLR' => 550,
    'KRN' => 900,
    'HYB' => 1200,
    'NGP' => 1600,
    'ITJ' => 1900,
    'BPL' => 2000,
    'AGA' => 2500,
    'NDL' => 2700
  }
end 
