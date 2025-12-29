function _init()	
	for i=0,6 do
		spawn_asteroid(10, 20+(i*15));
	end
end

function _update()
	update_asteroids();
end

function _draw()
	cls() --Clear screen
	draw_asteroids();
end
