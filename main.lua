_G.love = require("love")
require("classes.player")

function love.load()
    _G.World = love.physics.newWorld()
    local plr = player.new()
end

function love.draw()

end

function love.update(dt)

end