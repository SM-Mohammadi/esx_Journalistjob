ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback('esx_Journalistjob:getOtherPlayerData', function(source, cb, target)

	if Config.EnableESXIdentity then

		local xPlayer = ESX.GetPlayerFromId(target)

		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateoJournalistrth, height FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateoJournalistrth
		local height    = result[1].height

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end

	else

		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)

	end

end)


RegisterServerEvent('esx_Journalistjob:spawned')
AddEventHandler('esx_Journalistjob:spawned', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'Journalist' then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_Journalistjob:updateBlip', -1)
	end
end)

RegisterServerEvent('esx_Journalistjob:forceBlip')
AddEventHandler('esx_Journalistjob:forceBlip', function()
	TriggerClientEvent('esx_Journalistjob:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_Journalistjob:updateBlip', -1)
	end
end)

local akhbar = {}

RegisterCommand('akhbar', function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
    local playerName = GetPlayerName(source)
	local msg = rawCommand:sub(5)
	
	if akhbar[source] then

		TriggerClientEvent('chat:addMessage', source, {
			args = {"^1Lotfan ta Akbar badi 2 Saat sabr konid!"}
		})
	
		return
	end

	if xPlayer.job.name == 'Journalist' then

		if args[1] then 

			xPlayer.addMoney(reward)

			TriggerClientEvent('chat:addMessage', -1, {
				template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 0, 0, 0.3); border-radius: 3px;"><i class="far fa-newspaper"></i> Akhbar:<br>  {1}</div>',
				args = { GetPlayerName(source), msg }
			})
		else
			TriggerClientEvent('chatMessage', source, "[SYSTEM]", {255, 0, 0}, " ^0Shoma ^1nemitavanid ^0Matn khali befrestid!")
		end
	else
		TriggerClientEvent('chatMessage', source, "[SYSTEM]", {255, 0, 0}, " ^0Shoma ^1Khabarnegar ^0nistid!")
	end

	akhbar[source] = true
	SetTimeout(7200000, function()
		akhbar[source] = false
	end)
end, false)