asteroids={}

function spawn_asteroid(x,y)
    add(asteroids, {
        x=x,
        y=y,
        size=1+rnd(5),
        speed=1/rnd(10)
    })
end

function update_asteroids()
    for a in all(asteroids) do
        a.x += a.speed;
    end
end

function draw_asteroids()
    for a in all(asteroids) do
        draw_asteroid(a);
    end
end

function draw_asteroid(asteroid)
        circ(asteroid.x, asteroid.y, asteroid.size, 6);
end
