function _init()	
	-- init global state
	player = init_player();   	-- Player controller
	ac = init_asteroid_controller();				-- Asteroid controller


	-- Create initial asteroids
	for i=0,6 do
		ac.spawn_asteroid();
	end
end

function _update()
	ac.update();
	player.update();
end

function _draw()
	cls() --Clear screen
	ac.draw();
	player.draw();
end
