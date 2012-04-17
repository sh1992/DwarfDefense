
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

	def initialize(MapFile)
		
		end

end




#stuff to be written
	#Window
		#gui object
	#canvas
		#thing we put in the window
	#GameMap
		#thing we put onto the canvas
	#Dwarf
	#Item
		#building material
		#Weapon
		#Armor
	#building
		#store
		#tower
		#unit path along canvas
		#map array datastructure
		#display sprites on canvas
	#Tower
		#range
		#cooldown
		
	#enemy
		#sprite
	#unit path
		
