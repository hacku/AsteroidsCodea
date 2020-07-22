
function testAsteroids()
    CodeaUnit.detailed = true
    
    _:describe("First Tests", function()
        
        _:before(function()
            --setup goes here
        end)
        
        _:test("Hookup", function()
            _:expect( 2+1).is(3)
        end)
    end)
end
