-- AsteroidsCodea, Philipp Hackbarth 2020


function setup()
    print("Hello Asteroids!")
    pos = vec2(400,500)
    angle = math.random() * 2 * math.pi
    vel = 1.5
end


function draw()

    background(2, 2, 2)
    strokeWidth(2)
    stroke(255)
    fill(2)
    rectMode(CENTER)
    rect(pos.x,pos.y,120) 
    
    -- velocity of asteroid
    local step = vec2(vel,0):rotate(angle)
    
    -- move asteroid
    pos = pos + step            
    
    
    -- check screen boundaries
    if pos.x > WIDTH then pos.x = pos.x - WIDTH end
    if pos.x < 0 then pos.x = pos.x + WIDTH end
    
    if pos.y > HEIGHT then pos.y = pos.y - HEIGHT end
    if pos.y < 0 then pos.y = pos.y + HEIGHT end
    
end

