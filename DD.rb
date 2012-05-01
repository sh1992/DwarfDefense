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

#do we want a tile class then have child classes for each tile type?
class Tile


end

#class for game mapping
class GameMap

	def initialize(mapFile)
		
		end

end


class Wave


end

class UI


end

class Player


end

##example map
map1 = "############\nS==========@\n############\n"
#map 1 looks like


##		############
##		S==========@
##		############

#units spawn at S
#move accross the ='s which are the path
#take away hp upon reaching @ base
#towers can be built on the #'s



#need to write function that determines dimensions of a mapString for initializing the array
map1xSize = 12
map1ySize = 3

## rows of #'s treated as unwalkable space upon which towers can be placed
## path of walkable ='s with a Spawn tile S and a destination @
## because we will want to load these from file, expect the file to be read in with new lines at the end
## possibly the map name at the top with starting goal, starting health, etc, stored in the map file


		
#main function
def main(map=false,mapXsize=false,mapYsize=false)
	#if no map given as argument
	if map == false:
		#prompt user for name of map
		print "Enter Map Name"
		fname = gets
		fh = File.open(fname)
		mapString = fh.gets
		puts mapString
		#get map dimensions
		
		
	else
		
		mapString = map
		puts mapString.inspect
	end
	#now intialize an array and fill it using the string
	mapArray = Array.new(mapYsize)
	mapArray.size.times {|lolcat| mapArray[lolcat] = Array.new(mapXsize,"")}
	#now load string into array
	i = 0
	j = 0
	wall = "#"[0]
	spawn = "S"[0]
	base = "@"[0]
	nextLine = "\n"[0]
	while (j != mapXsize -1)  or (i != mapYsize -1) do
		
		#eventually fill matrix with tile objects, put characters will suffice for now
		if j == mapXsize - 1
			j = 0
			i += 1
			print "new line\n"
		elsif mapString[j+i*mapXsize] == wall
			mapArray[i][j] = wall.chr
			j += 1
			print "wall placed\n"
			print "\n", mapArray.inspect
			print "\n"
		elsif mapString[i+j*mapXsize] == spawn
			mapArray[i][j] = spawn.chr
			j += 1
			print "spawn placed\n"
		elsif mapString[i+j*mapXsize] == base
			mapArray[i][j] = base.chr
			j += 1
			print "base placed\n"
		
		else
			print i,"th row\t",j,"th column\n"
			print mapString[i]
			print "Invalid Character in map file\n"
		end
		
	end
	print mapArray.inspect


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
main(map1,map1xSize,map1ySize)	
