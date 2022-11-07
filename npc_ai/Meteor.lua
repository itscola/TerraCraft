---@type ModNpc
local Meteor = class("Meteor", ModNpc)

function Meteor:Update()
    self.npc:Fly()
end

function Meteor:OnDraw()
    self.npc.spriteEx.angle = self.npc.spriteEx.angle + 0.1
end

function Meteor:OnTileCollide(oldSpeedX, oldSpeedY)
    local npc = self.npc
    if npc.isCollisionLeft then
        npc.speedX = npc.maxSpeed
    elseif npc.isCollisionRight then
        npc.speedX = -npc.maxSpeed
    elseif npc.stand then
        npc.speedY = -npc.maxSpeed
    elseif npc.isCollisionTop then
        npc.speedY = npc.maxSpeed
    end
    local playerTarget = PlayerUtils.Get(npc.playerTargetIndex)
    if playerTarget ~= nil then
        local distance = npc:GetDistance(playerTarget.centerX, playerTarget.centerY)
        if distance < 360 then
            npc:Kill()
            MiscUtils.CreateExplosion(npc.centerXi, npc.centerYi, 4, true, true)
            EffectUtils.CreateExplosion(npc.centerX, npc.centerY)
        end
    end
end

return Meteor
