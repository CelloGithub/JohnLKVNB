--[[

 ________ __                         __                     __    __                            __            __   
|        \  \                       |  \                   |  \  |  \                          |  \         _/  \  
 \▓▓▓▓▓▓▓▓ ▓▓____   ______  _______ | ▓▓   __  _______     | ▓▓\ | ▓▓ ______   ______  _______  \▓▓ ______ |   ▓▓  
   | ▓▓  | ▓▓    \ |      \|       \| ▓▓  /  \/       \    | ▓▓▓\| ▓▓/      \ /      \|       \|  \/      \ \▓▓▓▓  
   | ▓▓  | ▓▓▓▓▓▓▓\ \▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\ ▓▓_/  ▓▓  ▓▓▓▓▓▓▓    | ▓▓▓▓\ ▓▓  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\ ▓▓  ▓▓▓▓▓▓\ | ▓▓  
   | ▓▓  | ▓▓  | ▓▓/      ▓▓ ▓▓  | ▓▓ ▓▓   ▓▓ \▓▓    \     | ▓▓\▓▓ ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓ ▓▓ ▓▓    ▓▓ | ▓▓  
   | ▓▓  | ▓▓  | ▓▓  ▓▓▓▓▓▓▓ ▓▓  | ▓▓ ▓▓▓▓▓▓\ _\▓▓▓▓▓▓\    | ▓▓ \▓▓▓▓ ▓▓__/ ▓▓ ▓▓__/ ▓▓ ▓▓  | ▓▓ ▓▓ ▓▓▓▓▓▓▓▓_| ▓▓_ 
   | ▓▓  | ▓▓  | ▓▓\▓▓    ▓▓ ▓▓  | ▓▓ ▓▓  \▓▓\       ▓▓    | ▓▓  \▓▓▓\▓▓    ▓▓\▓▓    ▓▓ ▓▓  | ▓▓ ▓▓\▓▓     \   ▓▓ \
    \▓▓   \▓▓   \▓▓ \▓▓▓▓▓▓▓\▓▓   \▓▓\▓▓   \▓▓\▓▓▓▓▓▓▓      \▓▓   \▓▓ \▓▓▓▓▓▓  \▓▓▓▓▓▓ \▓▓   \▓▓\▓▓ \▓▓▓▓▓▓▓\▓▓▓▓▓▓

]]
local Plr = game.Players.LocalPlayer
local ReSt = game.ReplicatedStorage
local events = require(game.ReplicatedStorage.ClientModules.Module_Events)
local cameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camera = workspace.CurrentCamera

local camShake = cameraShaker.new(Enum.RenderPriority.Camera.Value, function(cf)
	camera.CFrame = camera.CFrame * cf
end)
camShake:Start()
----------

function GetGitSound(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	local sound=Instance.new("Sound")
	sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
	return sound
end

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

--https://github.com/Noonie1/RandomUtilities/blob/ShadowScript/Shadow.mp3?raw=true
-- Create your tool here


ReSt.GameData.LatestRoom.Changed:Connect(function()
local Jack : Part = LoadCustomInstance("https://https://github.com/CelloGithub/JohnLKVNB/blob/main/Slacker.rbxm?raw=true")

Jack.Parent = workspace
Jack.Anchored = true
local End = workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value]:FindFirstChild("RoomStart")
local offset = Vector3.new(0,0,-15)
local ScarySound = GetGitSound("https://https://github.com/CelloGithub/JohnLKVNB/blob/main/JackScare.mp3?raw=true","Spooker")
events.flickerLights(workspace.CurrentRooms[ReSt.GameData.LatestRoom.Value],0.5)
ScarySound.Parent = workspace
ScarySound:Play()
ScarySound.Volume = 1
ScarySound.Pitch = Random.new():NextNumber(0.6,1)
Jack.CFrame = End.CFrame*CFrame.new(offset)
wait(0.6)
local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
		local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		local seconds = 25 -- Change to how long the blood room will last.
		v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)	
ScarySound:Destroy()
Jack:Destroy()



end)
