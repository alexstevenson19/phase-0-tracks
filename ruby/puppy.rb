
=begin
	SPECIES - Canine
	Characteristics -
		surface: fluffy
		eyes: warm
		personality: loyal, funny

	Behavior -
		excited when you come home, go to the park, sees a tennis ball
		picky about territory
=end


=begin
	
irb(main):001:0> class Puppy
irb(main):002:1> end
=> nil
irb(main):003:0> Puppy.methods
=> [:allocate, :new, :superclass, :freeze, :===, :==, :<=>, :<, :<=, :>, :>=, :to_s, :inspect, :included_modules, :include?, :name, :ancestors, :instance_methods, :public_instance_methods, :protected_instance_methods, :private_instance_methods, :constants, :const_get, :const_set, :const_defined?, :const_missing, :class_variables, :remove_class_variable, :class_variable_get, :class_variable_set, :class_variable_defined?, :public_constant, :private_constant, :singleton_class?, :include, :prepend, :module_exec, :class_exec, :module_eval, :class_eval, :method_defined?, :public_method_defined?, :private_method_defined?, :protected_method_defined?, :public_class_method, :private_class_method, :autoload, :autoload?, :instance_method, :public_instance_method, :nil?, :=~, :!~, :eql?, :hash, :class, :singleton_class, :clone, :dup, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]
irb(main):004:0> duchess = Puppy.new
=> #<Puppy:0x007fe239a6b8c8>
irb(main):005:0> fido = Puppy.new
=> #<Puppy:0x007fe239a6b210>
irb(main):006:0> spot = Puppy.new
=> #<Puppy:0x007fe239a5bb80>
irb(main):007:0> spot.class
=> Puppy
irb(main):008:0> duchess == fido
=> false
irb(main):009:0> fido.instance_of?(Array)
=> false
irb(main):010:0> fido.instance_of?(Puppy)
=> true
irb(main):011:0> spot.play_dead
NoMethodError: undefined method `play_dead' for #<Puppy:0x007fe239a5bb80>
	from (irb):11
	from /Users/alex/.rbenv/versions/2.1.5/bin/irb:11:in `<main>'
irb(main):012:0> str = String.new
=> ""
irb(main):013:0> str.length
=> 0
irb(main):014:0> str.empty?
=> true
irb(main):015:0> str += "huh."
=> "huh."
irb(main):016:0> str = "some string"
=> "some string"
irb(main):017:0> greeting = String.new("hello")
=> "hello"
irb(main):018:0> greeting.length
=> 5
irb(main):019:0> greeting.upcase
=> "HELLO"
irb(main):020:0> 
	
=end

def fetch(toy)
	puts "I brought back the #{toy}!"
	toy
end

fetch("bone")

