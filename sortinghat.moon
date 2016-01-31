get_index_name = (input,table) ->
	for i,v in pairs table
		if input == tostring i
			return i

get_index_number = (input,table) ->
	count = 0 
	for i,v in pairs table
		count += 1
		if input == tostring i
			return count

check_index_number = (input,table) ->
	count = 0 
	for i,v in pairs table
		count += 1
		if count == tonumber input
			return i


list_categories = (table) ->
	print ""
	print "The curent categories are:"
	print ""
	for i,v in pairs table
		print (get_index_number i, table)..")  "..i

plants = {}
animals = {}
minerals = {}
people = {}

categories = {
	plants: plants
	animals: animals
	minerals: minerals
	people: people
}



raw_list = {

	"tree"
	"flower"
	"cabbage"
	"moss"

	"cat"
	"dog"
	"iguana"
	"elephant"

	"granite"
	"marble"
	"hematite"
	"calcite"

	"Bob"
	"Sally"
	"Abdul"
	"Sven"

}

--print check_index_number 1, categories

while true
	
	--break

	for i=1,#raw_list
		os.execute("clear")
		print ""
		print " ##########################"
		print " # Weclome to SortingHat! #"
		print " ##########################"
		desc_categories categories
		print ""
		print "ITEM:    "..raw_list[i] 
		print ""
		io.write "> "
		input = io.read!
		--table.insert categories[get_index_name input, categories], raw_list[i]
		table.insert categories[check_index_number input, categories], raw_list[i]
	break
	
os.execute("clear")
print ""
print "-----------------------------------------"
print "-----------------------------------------"
print ""

for i1,v1 in pairs categories
	print ""
	print i1.." = {"
	for i2,v2 in pairs categories[i1]
		print '    "'..v2..'"'
	print "}"

print ""
print ""
print "-----------------------------------------"
print "-----------------------------------------"
print ""