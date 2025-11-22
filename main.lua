_G.love = require("love")
local sti = require("sti")


function love.load()
    Map = sti("map.lua", {'box2d'})
    World = love.physics.newWorld(0, 0)
    Map:box2d_init(World)
    Map.layers.collision.visible = false

end

function love.update(dt)
    -- empty
    World:update(dt)
end

function love.draw()
    Map:draw(0, 0, 1, 1)
end

