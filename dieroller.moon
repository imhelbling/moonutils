version = "v1.01"
die_size = 6
random = ->
	seedit1 = math.pow(os.clock(), 2) * 3000000000
	seedit2 = math.pow(seedit1, 2) * 2000000000
	seedit3 = math.pow(seedit2, 2) * 1000000000
	math.randomseed seedit3
	io.write (math.random die_size)

roll_n = (number) ->
	print "os.clock: "..os.clock()
	io.write "d#{die_size} rolls: "
	for i=1, number, 1 do
		random!
		if i != tonumber number
			io.write ", "
	print ""

help = "
--Enter 'roll (n)'   to roll (n) dice. 
--Enter 'die'        to query current size of die.
--Enter 'resize (n)' to set size of die.

--Enter 'help' to display this message again.
"

print "
	###############################
	# Welcome to Isaac Helbling's #
	#      Die Roller #{version}!      #
	###############################"
print help
print "Currently rolling d#{die_size}."

while input ~= "exit" do
	io.write "> "
	input = io.read()
	if input == "resize"
		io.write ">> Die size: "
		die_input = io.read()
		die_input
		export die_size = die_input
		print "Now rolling d#{die_size}."
	elseif input == "die"
		print "Currently rolling d#{die_size}."
	elseif input == "roll"
		roll_n 1
	elseif string.match input, "roll "
		number = string.match input, "roll (%d+)"
		roll_n number
	elseif input == "help"
		print help
	elseif input == "exit"
		print "Goodbye!"
		return
	else
		print "Invalid."
