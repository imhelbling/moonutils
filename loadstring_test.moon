destring = (input) ->
	load("return #{input}", "", "t", {:input, :print})!

check_if_nil = (input) ->
	if input == nil
		print "input is nil"

input = io.read!
destring input
	