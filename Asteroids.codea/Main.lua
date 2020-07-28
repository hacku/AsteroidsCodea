-- AsteroidsCodea, Philipp Hackbarth 2020


function setup()
    print("Hello Asteroids!")
    
    asteroids = {}
    
    for i = 0,10 do
        table.insert(asteroids,createAsteroid())
    end
    
    vel = 1.5
end

-- create new asteroid
function createAsteroid()
    local asteroid = {}
    asteroid.pos = vec2(math.random(WIDTH),math.random(HEIGHT))
    asteroid.angle = math.random() * 2 * math.pi
    return asteroid
end

-- boundary calculation for asteroids
function putInBounds(value, boundary)
    return (value + boundary) % boundary
end

function draw()
    -- setup scene
    background(2, 2, 2)
    -- draw objects
    drawAsteroids()
end

-- draws all created asteroids on screen
function drawAsteroids()
    pushStyle()
    strokeWidth(2)
    stroke(255)
    fill(0,0,0,0)
    rectMode(CENTER)
    
    for i,asteroid in ipairs(asteroids) do
        drawAsteroid(asteroid)
        moveAsteroid(asteroid)
    end
    popStyle()
end

-- draws one asteroid on screen
function drawAsteroid(asteroid)
    rect(asteroid.pos.x,asteroid.pos.y,120) 
end

-- moves an asteroid on screen, resets position on boundaries
function moveAsteroid(asteroid)
    -- velocity of asteroid
    local step = vec2(vel,0):rotate(asteroid.angle)
        
     -- move asteroid
    local pos = asteroid.pos + step            

    -- check new position 
    asteroid.pos = vec2(putInBounds(pos.x, WIDTH), putInBounds(pos.y, HEIGHT))
end
