_G.player = {}
player.__index = player

function player.new(keybinds, x, y, width, height, friction, acceleration, maxspeed)
    local self = {}

    self.xVel = 0
    self.yVel = 0

    self.x = x or 0
    self.y = y or 0

    self.width = width or 10
    self.height = height or 10

    self.friction = friction or 3500
    self.acceleration = acceleration or 4000
    self.maxSpeed = maxspeed or 100

    self.physics = {}
    self.physics.body = love.physics.newBody(World, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width, self.height)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)

    return setmetatable(self, player)
end

function player:update(dt)

end

function player:draw()
    
end