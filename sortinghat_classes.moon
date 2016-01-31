

class Category
	new: (@name) =>
		@items = {}

	add: (item) =>
  		table.insert @items, item
  		print "-- added "..item
	

plants = Category "plants"
animals = Category "animals"
minerals = Category "minerals"
people = Category "people"


print birds.name 
print fish.name 

for i,v in pairs birds.items
	print i,v

for i,v in pairs fish.items
	print i,v