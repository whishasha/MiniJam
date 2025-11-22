_G.love = require("love")
local sti = require("sti")
function love.load()
    map = sti("maps/map.lua", {'box2d'})
    world = love.physics.newWorld(0, 0)
    map:box2d_init(world)
    map.layers.collision.visible = false

end

function love.update(dt)
    -- empty
end

function love.draw()
    love.graphics.print("Hello World", 400, 300)
end

