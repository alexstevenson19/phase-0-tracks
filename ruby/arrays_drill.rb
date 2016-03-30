

def build_array(x, y, z)
  method_array = [x, y, z]
  p method_array
end


arr = []
def add_to_array(arr, x)
  total_array = arr << x
  p total_array
end






array_5_2 = []

first_array = array_5_2
p first_array


array_5_2 << "car"

# print first_array

array_5_2 << "boat"
array_5_2 << "plane"
array_5_2 << "bike"
array_5_2 << "chopper"

p array_5_2

array_5_2.delete_at(2)

p array_5_2

array_5_2.insert(2, "skateboard")

p first_array

array_5_2.delete("car")

p first_array

p "Is a bike included in the array: #{array_5_2.include?("bike")}."

p "Is a car included in the array: #{array_5_2.include?("car")}."

new_array_5_2 = ["Chicago", "Denver", "Des Moines"]

array_mash = array_5_2 + new_array_5_2

p array_mash

build_array(1, "two", nil)

add_to_array([], "a")
add_to_array(["a", "b", "c", 1, 2], 3)
add_to_array(["blue", 2, true], "red")
