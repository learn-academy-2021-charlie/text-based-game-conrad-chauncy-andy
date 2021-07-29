# fantasy game 3 endings different paths where you end up dying 
# oregon trailish theme 

def game_start
    "Welcome to Western Treasure Hunt, please enter your name.".each_char do |value|
        putc value 
        #sleep 0.05
    end
puts
gets.chomp
end

name = game_start

def intro name
    "Hello #{name} you're about to start your journey, before you there are 3 roads one on the left going towards the river, one on the right going towards a cave and one in the center going towards the ocean... will you go left right or center?".each_char do |value|
            putc value
            #sleep 0.05
        end
puts
gets.chomp
end

#return a string from intro(name) with left, right, or center
intro_path = intro(name)
#The River
########################################################
def option_left_story
    "You have reached the river.. it is a rocky river with a fast current.. you want to cross the river and you have three options to do so option 1) a rickety bridge option 2) an old boat option 3) swim across please type your option number bellow ".each_char do |value|
        putc value 
        #sleep 0.05
    end
puts
end

def option_left_number
    gets.chomp
end    

def option_bridge
    "The bridge collapsed as you were walking on it and you drowned under a pile of wood GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_boat
    "You made to the end, but then a tiger ate you! GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_swim
    "You survived and made it to the other side. Now that you here you are faced with new challenges.".each_char do |value|
        putc value 
        sleep 0.05
    end
end
################################################################
def option_center 
    "You have reached the cave.. it is a dark and smelly cave .. you have a ravine in front of you you have to cross you have three options 1) A hanging vine you can swing across option 2) full send jump option 3) climb down into the ravine and try to walk across ".each_char do |value|
        putc value 
        #sleep 0.05
    end
puts
gets.chomp
end

def option_right 
    "You have reached the ocean.. waves are crashing hard on the beach against the sand and the skies are cloudy.. ahead of you is an old capsized barge to reach it you have three options option 1) Just swim to it.. option 2) an old fishermans kayak option3) sit and think about more ways to get to the barge ".each_char do |value|
        putc value 
        #sleep 0.05
    end
puts
gets.chomp
end


def  start_path string
    if string.downcase == 'left'
        option_left_story
    elsif string.downcase == 'center'
        option_center
    elsif string.downcase == 'right'
        option_right
    end
end

def  left_options number
    if number.to_i == 1
        option_bridge
    elsif number.to_i == 2
        option_boat
    elsif number.to_i == 3
        option_swim
    end
end

start_path(intro_path)

left_options(option_left_number)




