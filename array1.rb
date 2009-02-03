 flavour = 'mango'  
 # an array whose elements are pointing  
 # to three objects - a float, a string and an array  
 var4 = [80.5, flavour, [true, false]]  
 puts var4[2] 
 
 
 # some methods on arrays 
 newarr = [45, 23, 1, 90] 
 puts newarr.sort 
 puts newarr.length 
 puts newarr.first 
 puts newarr.last 
 
 

 # method each (iterator) - extracts each element into lang 
 # do end is a block of code 
 # we shall talk about blocks soon here - 
 # http://rubylearning.com/satishtalim/ruby_blocks_and_procs.html 
 # variable lang refers to each item in the array as it goes through the loop 
 languages = ['Pune', 'Mumbai', 'Bangalore'] 
  
 languages.each do |lang| 
   puts 'I love ' + lang + '!' 
   puts 'Don\'t you?'  
 end 
 puts "\n"
 languages.each {|lang| puts 'I love ' + lang + '!' ;puts 'Don\'t you?' }