
def build_array(a, b, c)
  p [a, b, c]
end



def add_to_array(a, v)
  p a << v
end



first_array = []
p first_array
first_array + ["Pan", "spoon", "knife", "fork", "bowl"]
p first_array
first_array << "pan"
p first_array
first_array + ["spoon", "knife"]
p first_array
first_array << "spoon"
first_array << "knife"
first_array << "fork"
first_array << "bowl"
p first_array
first_array.delete_at(2)
p first_array
first_array.insert(2, "toaster")
p first_array
first_array.delete("pan")
p first_array
puts "This array includes a toaster: #{first_array.include?("toaster")}"
second_array = ["dog", "cat", "bird"]
p second_array
combined_array = first_array + second_array
p combined_array


build_array("table", 5, "chair")

add_to_array(["phone", 6, true], "moon")

