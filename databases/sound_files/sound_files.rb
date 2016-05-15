
=begin
	Make a Olympus Voice Recorder Sound File organizer. (Can also be adapted to make a photo organizer)
	I have digital recordings of my travels in Japan, US, and Europe but due to the nature of the voice recorder file system, files
	from similar time frames are broken up between five folders. While I have labeled the files themselves, I still have to 
	search through the folders to find them.

	Make a Ruby interface to store file information in a data base. 
	Table categories: theme, when, location, keywords, file folder
	A set number of themes to choose from: inner_thoughts, stories, travel_journal, japan_journal, memo, work, brainstorm
	When: year and (month(s) or season)
	Location: an wide variable going from country down to district/neighborhood. ex. Yamagata, or Shimokitazawa, or Golden Gai
	Keywords: also very wide open.
	There are only five file folders listed A to E, so they this information can be kept in a small database by itself, and will be a one to five relationship with the main database.

	
=end

require 'sqlite3'


db = SQLite3::Database.new("sound_files.db")
#db.results_as_hash = true



create_sound_table = <<-SQL
  CREATE TABLE IF NOT EXISTS sound_table (
    id INTEGER PRIMARY KEY,
    theme_id INT,
	year_when INT,
	location VARCHAR(255),
	keywords VARCHAR(255),
	folder_id INT,
	FOREIGN KEY (theme_id) REFERENCES themes(id), 
	FOREIGN KEY (folder_id) REFERENCES folders(id)
	);

  CREATE TABLE IF NOT EXISTS folders(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);

  CREATE TABLE IF NOT EXISTS themes(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);

SQL


# create foreign tables with finite information
create_folders = <<-SQL
  INSERT INTO folders (name) VALUES ('A'), ('B'), ('C'), ('D'), ('E')
SQL

create_themes = <<-SQL
   INSERT INTO themes (name) VALUES ('Inner Thoughts'), ('Stories'), ('Travel Journal'), ('Japan Life Journal'), 
     ('Memo'), ('Work Related'), ('Brainstorm')
 SQL





def create_soundtable(db, theme, time, location, keywords, folder)
  db.execute("INSERT INTO sound_table (theme_id, year_when, location, keywords, folder_id) 
  	VALUES (?, ?, ?, ?, ?)", [theme, time, location, keywords, folder])
end


# Need two methods to convert folders and themes into id numbers
def soundtable_input_folder
  valid_input = false
  until valid_input
	puts "Please select the folder where the file is currently located. \n
	  A, B, C, D, E"
      folder = gets.chomp
      	if folder.downcase == "a"
      	    folder_id = 1
      	    valid_input = true
      	  elsif folder.downcase == "b" 
      	    folder_id = 2
      	    valid_input = true
      	  elsif folder.downcase == "c" 
      	    folder_id = 3
      	    valid_input = true
      	  elsif folder.downcase == "d"
      	    folder_id = 4
      	    valid_input = true
      	  elsif folder.downcase == "e"
      	    folder_id = 5
      	    valid_input = true
      	  else
      	    puts "Sorry that is not a selection, please enter the letter again."
      	    valid_input = false     		
      	end
  end
  folder_id
end

def soundtable_input_theme
  valid_input = false
  until valid_input
	puts "Please select a theme. \n
	  Inner Thoughts(1), Stories(2), Travel Journal(3), Japan Life Journal(4), 
      Memo(5), Work Related(6), Brainstorm(7)\n		
      Just type the corresponding number:"
      theme = gets.chomp
      	if theme.to_i > 7 || theme.to_i < 1
      		puts "Sorry that is not a selection, please enter the number again."
      		valid_input = false
      	else
      		theme
      		valid_input = true      		
      	end
  end
  theme
end

def sound_input_year
	puts "Please enter the year."
	year_when = gets.chomp.to_i
	year_when
end

def sound_input_location
	puts "Please enter the location."
	location = gets.chomp.downcase
	location
end

def sound_input_keywords
	puts "Please enter one or more keywords."
	keywords = gets.chomp
	keywords
end

def sound_input_retrieve(db)
  output = nil
  valid_input = false
  until valid_input
	puts "How would you like to retrieve information? \n
  		theme(1), time(2), location(3), keywords(4), all(5)\n
  		Just type the corresponding number:"
  		selection = gets.chomp
  	  if selection.to_i > 5 || selection.to_i < 1
      		puts "Sorry that is not a selection, please enter the number again."
      		valid_input = false

      	elsif selection.to_i == 1
      	  valid_theme = false
      	  until valid_theme
    	    puts "Please select a theme. \n
    	  	Inner Thoughts(1), Stories(2), Travel Journal(3), Japan Life Journal(4), 
    	      Memo(5), Work Related(6), Brainstorm(7)\n		
    	      Just type the corresponding number:"
    	      theme = gets.chomp
    	        if theme.to_i > 7 || theme.to_i < 1
    	            puts "Sorry that is not a selection, please enter the number again."
    	        	  valid_theme = false
    	        	else
    	        	  theme
    	        	  valid_theme = true      		
    	        end
    	  end

      		output = db.execute("SELECT themes.name, year_when, location, keywords, folders.name 
      			FROM sound_table JOIN themes ON sound_table.theme_id = themes.id, 
      			folders ON sound_table.folder_id = folders.id WHERE theme_id = #{theme}")
      		valid_input = true

      	elsif selection.to_i == 2
      	  puts "Please enter the year:"
      	  year = gets.chomp
      	  year_check = db.execute("SELECT * FROM sound_table WHERE year_when='#{year}'")
      	    if year_check.length < 1
      	    	puts "Sorry, no year match."
      	    else
      	      output = db.execute("SELECT themes.name, year_when, location, keywords, folders.name 
      	  		  FROM sound_table JOIN themes ON sound_table.theme_id = themes.id, 
      	  		  folders ON sound_table.folder_id = folders.id WHERE year_when = #{year}")
      	      valid_input = true
      		end

      	elsif selection.to_i == 3
      	  puts "Please enter the location:"
      	  location = gets.chomp.downcase
      	  location_check = db.execute("SELECT * FROM sound_table WHERE location='#{location}'")
      	    if location_check.length < 1
      	    	puts "Sorry, no location match."
      	    else
              output = db.execute("SELECT themes.name, year_when, location, keywords, folders.name 
      	  	      FROM sound_table JOIN themes ON sound_table.theme_id = themes.id, 
      	  		  folders ON sound_table.folder_id = folders.id WHERE location = '#{location}'")
      	      valid_input = true
      	    end

      	elsif selection.to_i == 4
      	  puts "Please enter the keyword(s):"
      	  keyword = gets.chomp
      	  key_check = db.execute("SELECT * FROM sound_table WHERE keywords='#{keyword}'")
      	    if key_check.length < 1
      	    	puts "Sorry, no keyword match."
      	    else
      	    	output = db.execute("SELECT themes.name, year_when, location, keywords, folders.name 
      			FROM sound_table JOIN themes ON sound_table.theme_id = themes.id, 
      			folders ON sound_table.folder_id = folders.id WHERE keywords = '#{keyword}'")
      			valid_input = true
      		end

      	else #selection_to_i == 5
      	  output = db.execute("SELECT themes.name, year_when, location, keywords, folders.name 
      			FROM sound_table JOIN themes ON sound_table.theme_id = themes.id, 
      			folders ON sound_table.folder_id = folders.id")
      	  	valid_input = true

      end #valid input if loop
      		

  end
  puts "#{output}"
  output
end





# initial set up ==========================================================
db.execute_batch(create_sound_table)

# if returned array is < 5 or 7, then run table set up
folder_size = db.execute("SELECT * FROM folders")
theme_size = db.execute("SELECT * FROM themes")

if folder_size.length < 5
	db.execute(create_folders)
end

if theme_size.length < 7
	db.execute(create_themes)
end






# user interface - INPUT ==================================================
quit = false

until quit

  puts "Welcome to the Sound File Organizer."
  puts "Would you like to add information or retrieve information? Please type 'add' or 'retrieve':"
  puts "(Type 'q' to exit at any time.)"
  selection = gets.chomp

  if selection.downcase == "q"
    quit = true
    
  elsif selection.downcase == "add"
  	folder = soundtable_input_folder.to_i
	theme = soundtable_input_theme.to_i 
	time = sound_input_year
	location = sound_input_location
	keywords = sound_input_keywords
	#puts "#{theme}, #{folder}, #{time}, #{location}, #{keywords} 
	create_soundtable(db, theme, time, location, keywords, folder)

  elsif selection.downcase == "retrieve"
  	#retrieval process
  	sound_input_retrieve(db)
  else

  end

end

puts "Thank you for using the Sound File Organizer today."







#===============================================
# I may have to break the INSERT INTO command into a separate .execute command/method, but will try it all together at first.
# create_theme_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS themes(
#   	id INTEGER PRIMARY KEY,
#   	name VARCHAR(255)
#   	);
# SQL

# create_folder_table = <<-SQL
#   CREATE TABLE IF NOT EXISTS folders(
#   	id INTEGER PRIMARY KEY,
#   	name VARCHAR(255)
#   	);
# SQL

