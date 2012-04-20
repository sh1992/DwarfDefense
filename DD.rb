#dwarf defense
#a tower defense game written in ruby
#By Jack Rogers and Andrew Hearld


#class for enemy units
class Enemy

	attr_accessor :position, :sprite, :hp
	
	def initialize(startPosition, sprite, startingHealth)
		@position = startPosition
		@sprite = sprite
		@hp = startingHealth
		
		
		
		end
end

#class for friendly towers
class Tower
	
	attr_accessor :position, :sprite, :range, :damage, :cooldown
	
	def initialize(position,sprite,range,damage,cooldown)
		@position = position
		@sprite = sprite
		@range = range
		@damage = damage
		@cooldown = cooldown
		
		
		end

end

#class for game mapping
class GameMap

	def initialize(mapFile)
		
		end

end

##example map
map1 = "############\n		
		S==========@\n
		############\n"		## rows of #'s treated as unwalkable space upon which towers can be placed
							## path of walkable ='s with a Spawn tile S and a destination @
							## because we will want to load these from file, expect the file to be read in with new lines at the end
							## possibly the map name at the top with starting goal, starting health, etc, stored in the map file
							
		

def main(map=false)
	if map == false:
		print "Enter Map Name"
		fname = gets
		fh = File.open(fname)
		mapString = fh.gets
		puts mapString
		#now intialize an array and fill it using the string
	else
		mapString = map
		puts mapString
	end
		


end

#stuff to be written
	#Window
		#gui object
	#canvas
		#thing we put in the window
	#GameMap
		#thing we put onto the canvas
	#Tower
		#position
		#range
		#cooldown
		#damage
		#sprite
		
	#enemy
		#position
		#sprite
		#hp
	#enemy path


#Run main Function
main(map1)	
