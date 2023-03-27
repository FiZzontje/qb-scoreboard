Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 64) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
    Config.IllegalActions = {
        ["storerobbery"] = {
            minimum = 1,
            busy = false,
        },
        ["bankrobbery"] = {
            minimum = 2,
            busy = false,
        },
        ["jewellery"] = {
            minimum = 3,
            busy = false,
        },
        ["pacific"] = {
            minimum = 6,
            busy = false,
        },
        ["apple"] = {
            minimum = 1,
            busy = false,
        },
        ["ammunition"] = {
            minimum = 2,
            busy = false,
        },
    }

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = true

Config.CurrentAmbulance = 0

Config.CurrentCops = 0

Config.Currentmechanic = 0

Config.Currentcardealer = 0

Config.Currentcatcafe = 0