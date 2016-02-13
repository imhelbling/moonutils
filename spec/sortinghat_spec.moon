Category = require 'lib.category'

describe "Category", ->
	subject = nil
	before_each ->
		subject = Category "birds"

	it "starts with no items", ->
		assert.are.same subject.items, {}

	it "has a name", ->
		assert.equal subject.name, "birds"
	
	it "can have items added to it", ->
		subject\add "chicken"
		assert.are.same subject.items, {"chicken"}