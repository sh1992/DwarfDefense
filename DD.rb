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
	attr_accessor :map, :path, :spawn, :base

	@@map = [['#','#','#','#','#','#','#','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],\
			['S','=','=','=','#','#','=','=','=','@'],\
			['#','#','#','=','#','#','=','#','#','#'],\
			['#','#','#','=','=','=','=','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],\
			['#','#','#','#','#','#','#','#','#','#'],]

	def initialize()
		@path = map_info()[0]
		@spawn = map_info()[1]
		@base = map_info()[2]
	end

	def map_info()
		path_order = []
		final_path=[]
		for i in (0..9)
			temp=[]
			for j in (0..9)
				if @@map[j][i] == '='
					temp.push([i,j])
				elsif @@map[j][i] == "S"
					spawn = [i,j]
				elsif @@map[j][i] == "@"
					base = [i,j]
				end
			end
			path_order.push(temp)
		end
		path_order.delete([])
		#print path_order
		for i in (1..path_order.length-1)
			prev = path_order[i-1]
			current = path_order[i]
			if current.length == 1
				final_path.push(current[0])
			else
				current = current.sort
				if current[0][1] < prev[0][1]
					for i in current.reverse
						final_path.push(i)
					end
				else
					for i in current
						final_path.push(i)
					end
				end
			end
		end
		return [final_path,spawn,base]
	end

	def calc_coords(i,j)
	  	#where i is the ith col and j is the jth row in our tile map.
	  	x = 60*(i+1)-37
	  	y = 60*(j+1)-46
	  	return [x,y]
  	end
end
class Unimplemented

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
end

test_map = GameMap.new
print test_map.path,"\n"
print test_map.spawn,"\n"
print test_map.base