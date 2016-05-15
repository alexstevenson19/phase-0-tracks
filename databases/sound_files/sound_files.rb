
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
db.results_as_hash = true


# I may have to break the INSERT INTO command into a separate .execute command/method, but will try it all together at first.
create_theme_table = <<-SQL
  CREATE TABLE IF NOT EXISTS themes(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);
  INSERT INTO themes (name) VALUE ("Inner Thoughts"), ("Stories"), ("Travel Journal"), ("Japan Life Journal"), 
    ("Memo"), ("Work Related"), ("Brainstorm");
SQL

create_folder_table = <<-SQL
  CREATE TABLE IF NOT EXISTS folders(
  	id INTEGER PRIMARY KEY,
  	name VARCHAR(255)
  	);
  INSERT INTO folders (name) VALUE ("A"), ("B"), ("C"), ("D"), ("E");
SQL

create_sound_table = <<-SQL
  CREATE TABLE IF NOT EXISTS sound_table (
    id INTEGER PRIMARY KEY,
    theme_id INT,
	when VARCHAR(255),
	location VARCHAR(255),
	keywords VARCHAR(255)
	folder_id INT
	)
SQL



sound_db.execute(create_sound_table, create_folder_table, create_theme_table)




