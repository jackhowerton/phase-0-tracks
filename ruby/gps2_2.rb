# We will use a hash to store key value pairs for item/quantity
grocery_list = Hash.new

# Method to add an item to a list
def input (list, item, quantity)
	list[item] = quantity
end


# Method to remove an item from the list
def remove (list, item)
	list.delete(item)
end


# Method to update the quantity of an item
def update (list, item, quantity)
	list[item] = quantity
end


# Method to print a list and make it look pretty
def printout (list)
	list.each { |item, quantity| puts "#{item} is #{quantity} " } 
end


# DRIVER CODE
input(grocery_list,"Lemonade",2)
input(grocery_list,"Tomatoes",3)
input(grocery_list,"Onions",1)
input(grocery_list,"Ice Cream",4)
remove(grocery_list,"Lemonade")
update(grocery_list,"Ice Cream",1)
printout(grocery_list)

# 1. What did you learn about pseudocode from working on this challenge?
	# A: It can be very helpful to write pseudocode as different methods.
	# In past, I have made a bad habit of just writing a collection of logical 
	# steps and then setting up a structure as I go along. If a given step is 
	# particularly repetitive or used in several places, I would create a method
	# but would not have planned it from the get-go. Laying out the shape of the
	# program in advance helps me work piece-by-piece and avoid worrying about later steps.

# 2. What are the tradeoffs of using arrays and hashes for this challenge?
	# A: Hashes allow us to write methods that identify an 'item' by name and without knowing its position.
	# The hash also has the benefit of key value pairs, which associate an item with its quantity in a very simple way. 
	# I imagine that an array would require a nested structure (arrays within arrays of uniform shape, 
	# storing item and quantity) and some conditional and looping statements to access in the same way.

# 3. What does a method return?
	# A: a method will return its last line. For instance, if the last line is evaluating a variable, 
	# the method will return the value of said variable.


# 4. What kind of things can you pass into methods as arguments?
	# A: In just our program, we have seen that one can pass a hash (by name), a string, and an integer into a method.
	# Methods can also accept arrays of data, booleans, etc.

# 5. How can you pass information between methods?
	# A: One approach is to pass the variables into the method as arguments.
	# Another approach would be to operate on global variables that can be accessed by methods. 
	# Our instructor advised us that the first is preferable, in part (I think) because it keeps our methods flexible
	# and able to accept any variables input as arguments. 

# 6. What concepts were solidified in this challenge, and what concepts are still confusing?
	# A: Hash syntax. I have avoided using these, having grown pretty comfortable with looping and
	# nested arrays. Of course, there are plenty of situations where a hash simply works better,
	# so this was a very helpful GPS.
