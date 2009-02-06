#this works if staticly assigned
grades = [['cat', 'dog', 'mouse', 'giraffe', 'wolf', 'elephant'],['black', 'blue', 'green', 'white']]
#intialize; grades[y] = [] #creates multiple arrays
y = 0
while y <= grades.length-1 do
    puts "The length of #{grades[y]} is #{grades[y].length}"
    x=0
    while x <= grades[y].length-1 do
      puts "#{y}-#{x}. The length of #{grades[y][x]} is #{grades[y][x].length}"
      x=x+1
    end
    y=y+1
end