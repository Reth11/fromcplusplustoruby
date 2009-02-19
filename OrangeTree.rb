=begin
OrangeTree by Kyle Tuffentsamer
=end

class OrangeTree
        #each year the tree get taller (3"-6")
        #after x years the tree dies (35-50)
        #first few years (10-15) it should not grow fruit
        #Make sure any oranges you don’t pick one year fall off before the next year.
        
    def initialize 
        @orange_count = 0
        @tree_age = 0
        @tree_height = 3 #inches
        @tree_fruit = false
        @tree_dead = false
    end
    
    def height
      #returns its height
      puts "The tree height is #{@tree_height} inches."
      @tree_height = @tree_height
    end
  
    def one_year_passes
        #ages the tree one year
        #page 154
        if (rand(15)+30) < @tree_age
            return @tree_dead = true
        end
        @orange_count = 0 #new year all oranges fall off
        @growth = (rand(4)+3)
        @tree_height = @tree_height + @growth
        puts "\nThe tree grows"
        puts "Your tree grew #{@growth} inches and is now #{@tree_height/12}' #{@tree_height%12}\"."
        @tree_age = @tree_age + 1
        puts "The tree is now #{@tree_age} years old."
        if (@tree_age >= 10) and not (@tree_fruit) #check for minimum age and is not producing fruit
            @time_for_fruit = rand(5)+1       #random age for fruit
            if (@tree_age + @time_for_fruit) > 15 #check to produce fruit
                @tree_fruit = true
            end #end of test for producing fruit
        end #end of test for checking age to produce fruit
        if (@tree_fruit)
            @orange_count = rand((692-@tree_age))+@tree_age #guartees more fruit as the tree gets older
        end
        puts "The tree has #{@orange_count} oranges this year."
    end
  
    def count_the_oranges
      #count the number of oranges
      puts "There are #{@orange_count} oranges on the tree."
      @orange_count = @orange_count
    end
  
    def pick_an_orange
      #reduces the @orange_count by 1 and returns a string telling you how delicious the orange was, 
      #or else it just tells you that there are no more oranges to pick this year
        if @orange_count <= 0
            puts "There are no more oranges to pick this year."
            else
            puts "The oranges was delicious."
            @orange_count = @orange_count - 1
        end #end of if @orange cout
    end #end of pick_an_orange
    
    def is_tree_died? #is tree dead
        return @tree_dead
    end
    
end #end of Class OrangeTree defination

strange_tree = OrangeTree.new #make my tree
oranges_left = 0
strange_tree.height
while !strange_tree.is_tree_died? do
        strange_tree.count_the_oranges
        #while strange_tree.count_the_oranges > 0 #eat all the oranges!
            strange_tree.pick_an_orange
        #end
        strange_tree.one_year_passes
    end
puts "\nThe tree has died."
    