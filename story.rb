# fantasy game 3 endings different paths where you end up dying

def game_start
    "Welcome to Treasure Hunt, please enter your name.".each_char do |value|
        putc value 
        sleep 0.05
    end
puts
gets.chomp
end

name = game_start

def intro name
    "Hello #{name} you're about to start your journey, before you there are 3 roads:
    one on the left going towards the river, 
    one on the right going towards a cave 
    and one in the center going towards the ocean... 
    will you go left right or center?".each_char do |value|
            putc value
            sleep 0.05
        end
puts
gets.chomp
end

#return a string from intro(name) with left, right, or center
intro_path = intro(name)
#The River
########################################################
def option_river_story
    "You have reached the river.. it is a rocky river with a fast current.. you want to cross the river and you have three options to do so 
        option 1) a rickety bridge 
        option 2) an old boat
        option 3) swim across 
        please type your option number bellow ".each_char do |value|
        putc value 
        sleep 0.05
    end
puts
end

def option_number
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
    "You survived and made it to the other side.".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_swim_story
    "Now that you here you see the treasure. 
    option 1) Walk towards it to get it.
    option 2) There is a path that leads around the treasure to the back.
    option 3) There is a path towards the forest.
    Which path do you choose?
    ".each_char do |value|
        putc value 
        sleep 0.05
    end
    puts
end

def option_walk
    "You walk toward the treasure and step on a booby trap and get decapitated. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_around
    "You walk on the path around the treasure to the back. You get the treasure! YOU WIN!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_forest
    "You walk into the forest for some reason, get lost, and die. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

#The Cave
################################################################
def option_cave_story 
    "You have reached the cave.. it is a dark and smelly cave .. you have a ravine in front of you you have to cross you have three options 
    option 1) A hanging vine you can swing across 
    option 2) full send jump 
    option 3) climb down into the ravine and try to walk across ".each_char do |value|
        putc value 
        sleep 0.05
    end
puts
end

def option_vine
    "You swung on the vine and somehow made it over. You see the treasure in a cavern.".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_vine_story
    "Now that you here you see the treasure.
    option 1) Enter the treasure cavern.
    option 2) Look for alternative paths.
    option 3) Escape the cave.
    Which path do you choose?
    ".each_char do |value|
        putc value 
        sleep 0.05
    end
    puts
end

def option_enter
    "You enter the treasure cavern, you trigger trap, and you and the treasure sink to the bottom of the cave. You are crushed by the treasure. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_look
    "You look for an alternative path, and find a room with even more treasure on the otherside of the cave! YOU WIN!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_escape
    "You try to escape the cave, and you escape the cave and die a lonely miserable life, because you went into the cave for treasure and never got it. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_jump
    "You fell and broke both legs and now you're stuck to die. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_climb
    "You climbed down and were clubbed to death by a troll, and eaten. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end
#The Ocean
################################################################
def option_ocean_story
    "You have reached the ocean.. waves are crashing hard on the beach against the sand and the skies are cloudy.. ahead of you is an old capsized barge to reach it you have three options 
    option 1) Just swim to it.. 
    option 2) an old fishermans kayak 
    option 3) sit and think about more ways to get to the barge ".each_char do |value|
        putc value 
        sleep 0.05
    end
puts
end

def option_swimming
    "You try to swim to the barge and get eaten by a Megladon. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_kayak
    "You take the old fisherman's kayak and make it to the barge. You see the treasure!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_kayak_story
    "Now that you see the treasure.
    option 1) You see a door to the treasure room.
    option 2) You see a broken stair case to the upper deck.
    option 3) You see a hole in the floor below you that leads to the lower deck.
    Which path do you choose?
    ".each_char do |value|
        putc value 
        sleep 0.05
    end
    puts
end

def option_door
    "You enter the door, slip on a coin, and die amongst the treasure. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_stairs
    "You manage to ascend the broken stairs, and you see a hole on the upper deck into the treasure room. You go through the hole and get the treasure. YOU WIN!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_hole
    "You slip trying to go through the hole, fall through the barge and drown in the ocean. GAME OVER!".each_char do |value|
        putc value 
        sleep 0.05
    end
end

def option_sit
    "You sit down to think, somebody walk passed you and clubbed you on the beach while you were thinking of what to do".each_char do |value|
        putc value 
        sleep 0.05
    end
end
# Logic
################################################################

def  start_path string
    if string.downcase == 'left'
        option_river_story
    elsif string.downcase == 'right'
        option_cave_story
    elsif string.downcase == 'center'
        option_ocean_story
    end
end

def option_swim_story_end number
    if number.to_i == 1
        option_walk
    elsif number.to_i == 2
        option_around
    elsif number.to_i == 3
        option_forest
    end
end

def  river_options number
    if number.to_i == 1
        option_bridge
    elsif number.to_i == 2
        option_boat
    elsif number.to_i == 3
        option_swim
        option_swim_story
        option_swim_story_end option_number
    end
end

def option_vine_story_end number
    if number.to_i == 1
        option_enter
    elsif number.to_i == 2
        option_look
    elsif number.to_i == 3
        option_escape
    end
end

def cave_options number
    if number.to_i == 1
        option_vine
        option_vine_story
        option_vine_story_end option_number
    elsif number.to_i == 2
        option_jump
    elsif number.to_i == 3
        option_climb
    end
end

def option_kayak_story_end number
    if number.to_i == 1
        option_door
    elsif number.to_i == 2
        option_stairs
    elsif number.to_i == 3
        option_hole
    end
end

def ocean_options number
    if number.to_i == 1
        option_swimming
    elsif number.to_i == 2
        option_kayak
        option_kayak_story
        option_kayak_story_end option_number
    elsif number.to_i == 3
        option_sit
    end
end

def current_path direction
    if direction == 'left'
        river_options(option_number)
    elsif direction == 'right'
        cave_options(option_number)
    elsif direction == 'center'
        ocean_options(option_number)
    end
end

start_path(intro_path)

current_path(intro_path)

def reset 
    puts
    game_start
end

reset