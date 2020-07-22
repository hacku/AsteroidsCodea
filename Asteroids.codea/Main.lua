-- AsteroidsCodea, Philipp Hackbarth 2020


function setup()
    print("Hello World!")
    x = 400
    y = 50
end


function draw()

    background(2, 2, 2)
    strokeWidth(1)
    stroke(255)
    fill(2)
    ellipseMode(CENTER)
    ellipse(x,y,120)             
    
    -- move asteroid
    x = x + 1
    y = y + 2
    
    -- check screen boundaries
    if x > WIDTH then x = x - WIDTH end
    if x < 0 then x = x + WIDTH end
    
    if y > HEIGHT then y = y - HEIGHT end
    if y < 0 then y = y + HEIGHT end
    
end

