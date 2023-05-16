
Please insert this function into your es_extended.
path:
es_extended/server/functions.lua

```lua

function ESX.GetJobPlayers(job)
	local xPlayers = {}

	for k,v in pairs(ESX.Players) do
		if v.job.name == job then
			xPlayers[#xPlayers + 1] = v
		end
	end

	return xPlayers
end

```