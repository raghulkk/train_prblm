require './train_a.rb'
require './train_b.rb'
require './train_a_b.rb'

puts "Enter Train A boggies order. e.g., TRAIN_A ENGINE NDL NDL KRN GHY SLM NJP NGP BLR"
train_a_order = gets.chomp
puts "Enter Train B boggies order. e.g., TRAIN_B ENGINE NJP GHY AGA PNE MAO BPL PTA"
train_b_order = gets.chomp

train_a = TrainA.new(train_a_order)
train_b = TrainB.new(train_b_order)
train_ab = TrainAB.new(train_a_order, train_b_order)

puts "Train A Arrival => #{train_a.output.join(' ')}"
puts "Train B Arrival => #{train_b.output.join(' ')}"
puts "Train AB Departure => #{train_ab.output.join(' ')}"
