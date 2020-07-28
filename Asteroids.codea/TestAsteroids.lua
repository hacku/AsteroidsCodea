
function testAsteroids()
    CodeaUnit.detailed = true
    
    _:describe("First Tests", function()
        
        _:before(function()
            --setup goes here
        end)
        
        -- test if random gives us values between 0...TWOPI
        _:test("Random", function()
            local min = 100
            local max = 0
            
            for i = 0,1000 do
                local rand = math.random()*2*math.pi
                if rand < min then min = rand end
                if rand > max then max = rand end
            end
            
            _:expect(min < 0.01).is(true)
            _:expect(max > 6.2).is(true)
        end)
        
        -- test if rotated vector length is right
        _:test("Rotated length", function()
            for i = 0,1000 do
                local rand = math.random()*2*math.pi
                local v = vec2(1.5,0):rotate(rand)
                local d = v:len()
                _:expect(d > 1.495).is(true)
                _:expect(d < 1.505).is(true)
            end
        end)
        
        -- test for negative rotations
        _:test("Negative rotation", function()
            local angle = math.rad(-45)
            local v = vec2(1,0):rotate(angle)
            local rvx = v.x * 1000 // 1
            local rvy = v.y * 1000 // 1
            _:expect(rvx).is(707)
            _:expect(rvy).is(-708)
        end)
        
        -- test boundary check
        _:test("Boundary check", function()
            _:expect(putInBounds(100,1000)).is(100)
            _:expect(putInBounds(1000,1000)).is(0)
            _:expect(putInBounds(1001,1000)).is(1)
            _:expect(putInBounds(-1,1000)).is(999)
        end)
        
        --test extended is-test-function
        -- check: https://ronjeffries.com/articles/020-asteroids/asteroids-4/
        _:test("Test is-test", function()
            _:expect(1.2).is(1.25,0.5)
        end)
    end)
end

