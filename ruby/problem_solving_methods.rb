# RELEASE 0

def search_array (input_array, search_item)
	for i in 0...input_array.length
		if input_array[i] == search_item
			return i
		end
	end
end

# search_array([1,2,3,4,5],4)

# array2 = [8,9,7]

#RELEASE 1

def fib(terms)
  base = [0,1]
  
  for i in 2...terms
    base[i] = base[i-2] + base[i-1]
  end
  return base
end

if fib(100).last == 218922995834555169026
  "It matches!"
end



