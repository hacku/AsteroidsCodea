-- AsteroidsCodea, Philipp Hackbarth 2020


function setup()
    print("Hello Asteroids!")
    
    asteroids = {}
    
    for i = 0,1 do
        asteroid = {}
        asteroid.pos = vec2(math.random(WIDTH),math.random(HEIGHT))
        asteroid.angle = math.random() * 2 * math.pi
    
        table.insert(asteroids,asteroid)
        
    end
    
    
    vel = 1.5
end


function draw()

    background(2, 2, 2)
    strokeWidth(2)
    stroke(255)
    fill(2)
    rectMode(CENTER)
    
    for i,asteroid in ipairs(asteroids) do
        rect(asteroid.pos.x,asteroid.pos.y,120) 
    
        -- velocity of asteroid
        local step = vec2(vel,0):rotate(asteroid.angle)
        
        -- move asteroid
        asteroid.pos = asteroid.pos + step            
        
        
        -- check screen boundaries
        if asteroid.pos.x > WIDTH then asteroid.pos.x = asteroid.pos.x - WIDTH end
        if asteroid.pos.x < 0 then asteroid.pos.x = asteroid.pos.x + WIDTH end
        
        if asteroid.pos.y > HEIGHT then asteroid.pos.y = asteroid.pos.y - HEIGHT end
        if asteroid.pos.y < 0 then asteroid.pos.y = asteroid.pos.y + HEIGHT end
    end
    
    
    
end

