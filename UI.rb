# UI for DwarfDefense
# Seth, Jack @ NCF.
#5/1/2012

#!/usr/bin/env ruby
 
require "rubygems"
require "rubygame"
include Rubygame
 
@screen = Screen.open [ 600, 600]
 
 
# Defines a class for an example object in the game that will have a
# representation on screen ( a sprite)
class EnemySprite
  include Sprites::Sprite
 
  def initialize(startposition,goals)
    super()
    # @image and @rect are expected by the Rubygame sprite code
    @image = Surface.load "meanie.png"
    @rect  = @image.make_rect
    @incr = 0
    @speed = 0.25 #locked at .25 for now
    @rect.topleft = startposition
    @goals = goals
    @g_index = 0
  end
 
  def update  seconds_passed
    @incr= @speed
 	@goal= @goals[@g_index]
 	if @rect.topleft[0]<=@goal[0]
 		if @rect.topleft == @goal
 			@g_index+=1
 		else
	 		puts @rect.topleft, @goal, 'posX<goalX'
	 		@rect.topleft = [@rect.topleft[0] + @incr, @rect.topleft[1]]
	 	end
	elsif @rect.topleft[1]<=@goal[1]
		puts @rect.topleft, @goal, 'posY<goalY'
		@rect.topleft = [@rect.topleft[0], @rect.topleft[1] + @incr]
    elsif @rect.topleft[0]>=@goal[0]
    	puts @rect.topleft, @goal, 'posX>goalX',@incr_neg
	    @rect.topleft = [@rect.topleft[0] - @incr, @rect.topleft[1]]
    elsif @rect.topleft[1]>=@goal[1]
    	puts @rect.topleft, @goal, 'posY>goalY', @incr_neg
	    @rect.topleft = [@rect.topleft[0], @rect.topleft[1] - @inc]
    end
  end

  def draw  on_surface
    @image.blit  on_surface, @rect
  end
end

class GameMap
	def initialize()
		@clock = Clock.new
		@clock.target_framerate = 60
		@clock.enable_tick_events

		# Create a new group of sprites so that all sprites in the group may be updated
		# or drawn with a single method invocation.
		@sprites = Sprites::Group.new
		
		@background = Surface.load "background.png"
		@background.blit @screen, [ 0, 0]
		 
		@event_queue = EventQueue.new
		@event_queue.enable_new_style_events
		 
		should_run = true
		while should_run do
		  seconds_passed = @clock.tick().seconds
		  @event_queue.each do |event|
		    case event
		      when Events::QuitRequested, Events::KeyReleased
		        should_run = false
		    end
		  end
		  @sprites.undraw @screen, @background
		  @sprites.update  seconds_passed
		  @sprites.draw @screen
		  @screen.flip
		end
	end

	def addEnemy()
		Sprites::UpdateGroup.extend_object @sprites
		@sprites << EnemySprite.new() end
end
