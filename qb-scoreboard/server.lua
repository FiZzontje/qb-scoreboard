local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetConfig', function(_, cb)
    cb(Config.IllegalActions)
end)

QBCore.Functions.CreateCallback('qb-scoreboard:server:GetScoreboardData', function(_, cb)
    local totalPlayers = 0
    local policeCount = 0
    local players = {}
    local AmbulanceCount = 0
    local mechanicCount = 0
    local cardealerCount = 0
    local catcafeCount = 0
    

    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v then
            totalPlayers += 1

            if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
                policeCount += 1
            end
            
            if v.PlayerData.job.name == "ambulance" and v.PlayerData.job.onduty then
                AmbulanceCount += 1
            end
             
            if v.PlayerData.job.name == "mechanic" and v.PlayerData.job.onduty then
                mechanicCount += 1
            end

            if v.PlayerData.job.name == "cardealer" and v.PlayerData.job.onduty then
                cardealerCount += 1
            end

            if v.PlayerData.job.name == "catcafe" and v.PlayerData.job.onduty then
                catcafeCount += 1
            end

            players[v.PlayerData.source] = {}
            players[v.PlayerData.source].optin = QBCore.Functions.IsOptin(v.PlayerData.source)
        end
    end
    cb(totalPlayers, policeCount, players, AmbulanceCount, mechanicCount, cardealerCount, catcafeCount)
end)

RegisterNetEvent('qb-scoreboard:server:SetActivityBusy', function(activity, bool)
    Config.IllegalActions[activity].busy = bool
    TriggerClientEvent('qb-scoreboard:client:SetActivityBusy', -1, activity, bool)
end)