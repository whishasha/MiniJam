_G.love = require("love")
local sti = require("sti")

require("classes.player")


function love.load()
    Map = sti("map.lua", {'box2d'})
    World = love.physics.newWorld(0, 0)
    Map:box2d_init(World)
    Map.layers.collision.visible = false

    _G.plr = Player.new()

end

function love.update(dt)
    -- empty
    World:update(dt)
    plr:update(dt)
end

function love.draw()
    Map:draw(0, 0, 1, 1)
    plr:draw()
end