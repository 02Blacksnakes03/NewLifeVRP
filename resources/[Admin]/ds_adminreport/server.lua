local webhook = "https://discord.com/api/webhooks/764253689728598026/AM03skT9u0JdwpZOg0hJzWqRM2EIbMlVooxYPngFMPyZsvxxwi75UUcR3pqsUPbZ4bGD" -- Webhook URL
local username = "Support-Ingame"
local image = "" -- Discord webhook avatar

RegisterCommand("support", function(source, args, rawCommand)
	if source > 0 then
		local playerName = GetPlayerName(source)
		local identifier = GetPlayerIdentifier(source)
		local msg = table.concat(args, " ", 1)
		TriggerClientEvent('chat:addMessage', source, {
			color = { 255, 0, 0 },
			multiline = true,
			args = {"System", "	Es wurde ein Support-Fall geöffnet. Es wird sich bald jemand um dich kümmern!"}
		})
		local embeds = {
			{
				["color"] = 108773,
				["title"] = "Es kam ein Support-Fall von "..playerName.." (ID="..source..") :",
				["description"] = "**Angaben :** "..msg.."",
				["footer"] = {
					["text"] = "Player identifier : "..identifier..""
				},
			},
		}
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = username, embeds = embeds}), { ['Content-Type'] = 'application/json' })
	end
end)
