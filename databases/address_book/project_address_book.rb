require 'sqlite3'
require 'faker'

# setting up a database file
database = SQLite3::Database.new("address_book.db")

# treats the rows of the database as a hash rather than array
database.results_as_hash = true

# method sets up "contacts" table in address_book.db ONLY if not already there.
setup_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS contacts(
		id INTEGER PRIMARY KEY,
		lastname CHAR(255),
		firstname CHAR(255),
		email CHAR(255),
		phone CHAR(255),
		address CHAR(255)
	)
SQL

# calls above method to make sure "contacts" table exists in address_book.db
database.execute(setup_table_cmd)

# prints formatted version of input
def print (input)
	input.each do |contact|
		puts "		#{contact['id']}. #{contact['firstname']} #{contact['lastname']}"
	   	puts "		EMAIL: #{contact['email']}"
	   	puts "		PHONE: #{contact['phone']}"
	   	puts "		ADDRESS: #{contact['address']}"
	   	puts ""
	end
end

# adds a new contact in the database
def create_new_contact(db)
	temp_array = [ ]
	puts "Please enter contact information as follows."
	puts "LAST NAME:"
	temp_array.push(gets.chomp)

	puts "","FIRST NAME:"
	temp_array.push(gets.chomp)

	puts "","EMAIL:"
	temp_array.push(gets.chomp)

	puts "","PHONE:"
	temp_array.push(gets.chomp)

	puts "","ADDRESS:"
	temp_array.push(gets.chomp)
	db.execute("INSERT INTO contacts (lastname,firstname,email,phone,address) VALUES (?, ?, ?, ?, ?)", temp_array)
end

def search (db)
	type = nil;
	search_term = nil;
	results = nil;
	
	puts "What attributes would you like to search? (id, lastname, firstname, email, phone or address)"
	type = gets.chomp


	puts "","Please enter the term you would like to search for."
	search_term = gets.chomp

	results = db.execute("SELECT * FROM contacts WHERE #{type}=?",search_term)

	puts "","Contacts Found: #{results.length}",""
   	print(results)

end

def remove_contact(db)
	type = nil;
	search_term = nil;
	matches = nil;

	puts "You may delete contact(s) by their id, lastname, firstname, email, phone or address. What type of term would you like to use to identify contacts for deletion?"
	type = gets.chomp

	puts "","Please enter the term."
	search_term = gets.chomp

	matches = db.execute("SELECT * FROM contacts WHERE #{type}=?",search_term)
	puts "","#{matches.length} contacts have been deleted from the system.",""

	db.execute("DELETE FROM contacts WHERE #{type}=?",search_term)
end




# Driver code and user prompt

puts "Welcome to Address Book! Your current version is GREAT!",""

user_exit = 0;
until user_exit == 1;
	
	puts "","Please enter a command:",""
	puts "		'VIEW' -- See printout of the entire address book."
	puts "		'SEARCH' -- Search through the address book."
	puts "		'ADD' -- Made a new friend? Fantastic! Add their info here!"
	puts "		'DELETE' -- Added too much fake data? 'DELETE' it!"
	puts "		'EXIT' -- Get out of here!"

	while input = gets.chomp.downcase
		case input
		when 'view'
			print(database.execute("SELECT * FROM contacts"))
			break;
		when 'search'
			search(database)
			break;
		when 'add'
			create_new_contact(database)
			break;	
		when 'delete'
			remove_contact(database)
			break;
		when 'exit'
			puts "Thanks for using the best address book ever!"
			user_exit = 1;
			break;
		else
			puts "","Invalid entry, please try again."
		end
	end
end


