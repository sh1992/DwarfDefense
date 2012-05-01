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
##example map
map1String = "############\nS==========@\n############\n"
map1Array = [['#','#','#','#','#','#','#','#','#','#'],
			 ['S','=','=','=','=','=','=','=','=','@'],
			 ['#','#','#','#','#','#','#','#','#','#']]


#map 1 looks like

##		############
##		S==========@
##		############

#units spawn at S
#move accross the ='s which are the path
#take away hp upon reaching @ base
#towers can be built on the #'s

	def initialize()
		
		end

end

class Wave
end

class Player
end

class Window
end

class Menubar
end

class MapCanvas
end

class Sidebar
end

class DialogPopup
end

