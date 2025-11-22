_G.love = require("love")
Player = {}
Player.__index = Player

function Player.new(self, keybinds, x, y, width, height, friction, acceleration, maxspeed, gravity)
    local self = self or {}
    
    self.xVel = 0
    self.yVel = 100

    self.x = x or 200
    self.y = y or 200

    self.width = width or 100
    self.height = height or 100

    self.friction = friction or 3500
    self.acceleration = acceleration or 4000
    self.maxSpeed = maxspeed or 100
    self.gravity = gravity or 1500

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)

    self.keybinds = {}

    return setmetatable(self, Player)
end

function Player:syncPhysics()
    self.x, self.y = self.physics.body:getPosition()
    self.physics.body:setLinearVelocity(self.xVel, self.yVel)
end

function Player:update(dt)
    self:syncPhysics()
end

function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end