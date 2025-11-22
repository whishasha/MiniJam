_G.love = require("love")
local sti = require("sti")
function love.load()
    Map = sti("maps/map.lua", {'box2d'})
    World = love.physics.newWorld(0, 0)
    Map:box2d_init(world)
    Map.layers.collision.visible = false

end

function love.update(dt)
    -- empty
end

function love.draw()
    Map:draw()
    love.graphics.print("Hello World", 400, 300)
end

