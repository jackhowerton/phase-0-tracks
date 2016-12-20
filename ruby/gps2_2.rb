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
