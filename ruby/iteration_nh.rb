
dinos = ["T-rex", "brontosaurus", "pterodactyl"]
number_of_dinos = dinos.length
number_of_dinos.times { |x| puts "#{dinos[x]} #{x}!" }
number_of_dinos.times { puts "I love dinos!" }



tableware = ["cup", "plate", "spoon", "fork", "knife"]

p tableware

def set_table(settings)
    puts "before the table is set"
    p settings
    settings.each{|utensil| puts "#{utensil}" + "!"}
    settings.each{|utensil| puts "Please put #{utensil} on the table."}
    puts "after the table is set"
    p settings
end

set_table(tableware)


#=================================== Release 01

musicians = ["Bowie", "Prince", "Fry", "Petty", "Ozzy" ]

musician_status = {bowie: "deceased", prince: "deceased", fry: "deceased", petty: "living", ozzy: "living"}

musicians.each {|musician| puts "#{musician} ROCKS!" }

musicians.map! {|musician| musician.upcase }
p musicians

musician_status.each {|musician, status| puts "#{musician.capitalize} is #{status}" }
