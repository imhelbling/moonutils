list = (input) ->
	for i,v in pairs input.items
			print i,v


class Category
	new: (@name, @number) =>

		@items = {}

	add: (item) =>
  		table.insert @items, item
		
	
current_number = 0

plants = Category "plants"
animals = Category "animals"
minerals = Category "minerals"
people = Category "people"	

people\add "Dante"
people\add "Larry"
people\add "Fatima"
people\add "Bethany"

list people

i = 0

print i

f = loadstring "i += 1"

f!

print i