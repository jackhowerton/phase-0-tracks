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
	
	puts "What attributes would you like to search? (lastname, firstname, email, phone or address)"
	type = gets.chomp


	puts "","Please enter the term you would like to search for."
	search_term = gets.chomp

	case type
	when "lastname"
		results = db.execute("SELECT * FROM contacts WHERE lastname=?",search_term)
	when "firstname"
		results = db.execute("SELECT * FROM contacts WHERE firstname=?",search_term)
	when "email"
		results = db.execute("SELECT * FROM contacts WHERE email=?",search_term)
	when "phone"
		results = db.execute("SELECT * FROM contacts WHERE phone=?",search_term)
	when "address"
		results = db.execute("SELECT * FROM contacts WHERE address=?",search_term)
	else
	  puts "User entered invalid command."
	end

	puts "","Contacts Found: #{results.length}",""
   	results.each do |contact|
   	puts "		#{contact['id']}. #{contact['firstname']} #{contact['lastname']}"
   	puts "		EMAIL: #{contact['email']}"
   	puts "		PHONE: #{contact['phone']}"
   	puts "		ADDRESS: #{contact['address']}"
   	puts ""
   end
end

search(database)

