
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




#=================================== Release 02

array1 = [1, 2, 3, 4, 5]

array1.delete_if {|x| x <=4}
p array1

hash1 = {one: 1, two: 2, three: 3, four: 4, five: 5}
hash1.delete_if {|k, v| v > 2 && v < 5}
p hash1

array2 = [1, 2, 3, 4, 5]

array2.keep_if {|x| x > 2}
p array2

hash2 = {one: 1, two: 2, three: 3, four: 4, five: 5}
hash2.keep_if {|k, v| v > 2 && v < 5}
p hash2


array3 = [1, 2, 3, 4, 5]

p array3.drop_while {|x| x != 3}

hash3 = {one: 1, two: 2, three: 3, four: 4, five: 5}
p hash3.drop_while {|k, v| v < 3 }

