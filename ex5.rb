my_name = 'Zed A. Shaw'
my_age = 35 # not a lie
my_height = 74 # inches
my_weight = 180
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'
weight_in_kg = my_weight * 0.45
height_in_cm = my_height * 2.54

puts "Let's talk about %s" % my_name
puts "He's %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight
puts "Actually that's not too heavy."
puts "He's got %s eyes %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

puts "If I add %d, %d, and %d I get %d." % [
	my_age, my_height, my_weight, my_age + my_height + my_weight]

puts "If I were in France, Zed would be #{height_in_cm} centimeters tall\nand weigh #{weight_in_kg} kilograms."
