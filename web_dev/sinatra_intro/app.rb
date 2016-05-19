# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]   #the brackets at the end just get rid of the brackets around the hash when it prints to the browser.
  student.to_s
end


# add a contact route. I decided just to use the names from the student database
get '/students/:id/contact/:address' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  "#{student['name']} lives at #{params[:address]}."
  end

# add a 'great job' route with a query parameter. *note, you need the last '/' in the get call for the query parameter to work
get '/great_job/' do
  name = params[:name]
  if name
    "Great job #{name}!"
  else
    "Great job user!"
  end
end


get '/addition/:num1/plus/:num2' do
  n1 = params[:num1]
  n2 = params[:num2]
  add = n1.to_i + n2.to_i
  "#{n1} + #{n2} = #{add}"
  end



