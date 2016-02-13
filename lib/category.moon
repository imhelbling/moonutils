

class Category
	new: (@name) =>
		@items = {}

	add: (item) =>
  		table.insert @items, item