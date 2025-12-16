_G.love = require("love")
Player = {}
Player.__index = Player

function Player.new(self)
    local self = self or {}
    
    self.xVel = 0
    self.yVel = 100

    self.x = 200
    self.y = 200

    self.width = 100
    self.height = 100

    self.friction = 3500
    self.acceleration = 4000
    self.maxSpeed = 100
    self.gravity = 1500

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
    love.graphics.rectangle("fill", self.x - self.width/2, self.y - self.height/2, self.width, self.height)
end