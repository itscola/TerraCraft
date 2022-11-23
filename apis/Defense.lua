-- Document
-- Defense Class: https://blueyoshi.gitbook.io/terracraft/en/mod/api/type#defense
--
-- Defense类: https://blueyoshi.gitbook.io/terracraft/cn/mod/api/type#defense
--
-- Copyright (c) 2021. BlueYoshi(blueyoshi@foxmail.com)

---@class Defense Represents a defense property. (表示一个防御属性)
---@field defense int The defense value. (防御值)
---@field blastDefense int The value of explosion defense. (爆炸防御值)
---@field flameDefense int The value of fire defense. (火焰防御值)
---@field projectileDefense int The value of projectile defense. (抛掷物防御值)
---@field breathDefense int The value of breath defense. (呼吸防御值)
---@field fallDefense int The value of fall defense. (掉落防御值)
---@field knockBackDefense int The value of knock back defense. (击退防御值)
local Defense = {}

function Defense:Restore()
end

return Defense