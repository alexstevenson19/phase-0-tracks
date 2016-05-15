
=begin
	Make a Olympus Sound File organizer. (Can also be used to make a photo organizer)
	I have digital recordings of my travels in Japan, but due to the nature of the voice recorder file system, files
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



# I may have to break the INSERT INTO command into a separate .execute command/method, but will try it all together at first.
create_theme_table = <<-SQL
  CREATE TABLE IF NOT EXISTS themes(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);
SQL

create_folder_table = <<-SQL
  CREATE TABLE IF NOT EXISTS folders(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);
SQL

create_sound_table = <<-SQL
  CREATE TABLE IF NOT EXISTS sound_table (
    id INTEGER PRIMARY KEY,
    theme_id INT,
	year_when VARCHAR(255),
	location VARCHAR(255),
	keywords VARCHAR(255),
	folder_id INT
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


# methods for foreign tables with finite information
create_folders = <<-SQL
  INSERT INTO folders (name) VALUES ('A'), ('B'), ('C'), ('D'), ('E')
SQL


create_themes = <<-SQL
   INSERT INTO themes (name) VALUES ('Inner Thoughts'), ('Stories'), ('Travel Journal'), ('Japan Life Journal'), 
     ('Memo'), ('Work Related'), ('Brainstorm')
 SQL

# Need two methods to convert folders and themes into id numbers

def create_soundtable(db, theme, time, location, keywords, folder)
  db.execute("INSERT INTO kittens (theme_id, year_when, location, keywords, folder_id) 
  	VALUES (?, ?, ?, ?, ?)", [theme, time, location, keywords, folder])
end




db.execute_batch(create_sound_table)
#db.execute_batch(create_folder_table)
#db.execute_batch(create_theme_table)

# if returned array is < 5 or 7, then run table set up
folder_size = db.execute("SELECT * FROM folders")
theme_size = db.execute("SELECT * FROM themes")

if folder_size.length < 5
	db.execute(create_folders)
end

if theme_size.length < 7
	db.execute(create_themes)
end

# call foreign table methods
# db.execute(create_folders)
# db.execute(create_themes)






