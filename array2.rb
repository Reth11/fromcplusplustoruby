=begin
This is array2.rb. This my code for reading characters from a string in an array
=end

arrayofstrings = ["Kyle was here", "I love Ruby"]
arrayofstrings.each {|index| puts index}
#excellent the loop is working and two different strings are stored in the array.
temp_string = arrayofstrings[0]
puts "this is the tempory string: " + temp_string
temp_letter =temp_string[0].chr
puts "this is the tempory letter: " + temp_letter
temp_string = arrayofstrings[1]
puts "this is the tempory string: " + temp_string
temp_letter =temp_string[0].chr
puts "this is the tempory letter: " + temp_letter