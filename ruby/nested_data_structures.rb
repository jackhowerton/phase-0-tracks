# A whole nested data structure about where I left things in cars!

leftincar = { 
	  
	  "momcar" => {
	    "cupholder" => {
	      "list1" => [3,2,1]
	    }
	  },
	  
	  "mycar" => {
	    "centerconsole" => ["fasttrak","insurance papers", "flashlight", "gum", "tire pressure gauge", "list2" => [9,8,7]]
	  },
	  
	  "othercar" => {
	    "glove compartment" => ["altoids","mentos"]
	  }
	  
}

p leftincar["mycar"]["centerconsole"][3] # prints "gum" from inside my car's center console.

p leftincar["othercar"]["glove compartment"][0] # prints "altoids" from inside the othercar's glove compartment.





# def search(obj,key)
#   if obj.respond_to?(:key?) && obj.key?(key)
#     obj[key]
#   elsif obj.respond_to?(:each)
#     output = nil
#     obj.find{ |*a| output=search(a.last,key) }
#     output
#   end
# end

# p search(leftincar,"list2")
