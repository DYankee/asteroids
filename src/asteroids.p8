-- Create asteroid controller entity
function init_asteroid_controller()
    -- create and define the asteroid controller
    local ac = {};
    ac.asteroids = {};

    -- Main update function for the asteroid controller
    -- Place all player update function here
    ac.update = function()
        -- Call for each asteroid in the table
        for asteroid in all(ac.asteroids) do
            move_asteroid(asteroid);
        end
    end

    ac.draw = function()
        -- call for each asteroid in the table
        for asteroid in all(ac.asteroids) do
            draw_asteroid(asteroid);
        end
    end

    ac.spawn_asteroid = function()
        local asteroid = {};

        -- Set random initial position
        -- can be reworked later to not spawn in the middle of the screen
        asteroid.x = rnd(128);
        asteroid.y = rnd(128);

        -- set random size
        asteroid.size = 1 + rnd(5);

        -- Set random velocity and direction
        local angle = rnd(1)
        local velocity = (0.5 + rnd(1)) / 10;

        -- calculate  dx and dy 
        asteroid.dx = cos(angle) * velocity;
        asteroid.dy = sin(angle) * velocity;

        -- add the new asteroid to the 
        add(ac.asteroids, asteroid) 
    end

    return ac;
end
    

-- Function for constructing a new asteroid and adding to the table
function spawn_asteroid(asteroids)
    
end

-- Basic function for updating the asteroids position
function move_asteroid(asteroid)
        asteroid.x += asteroid.dx;
        asteroid.y += asteroid.dy;

end

-- Basic render function for drawing asteroids
function draw_asteroid(asteroid)
        circfill(asteroid.x, asteroid.y, asteroid.size, 6);
end
