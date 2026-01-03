-- V POSE | DELTA | R15
-- by Leooodzz (puedes cambiar el nombre)

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

-- Detener animaciones por defecto
for _, track in pairs(hum:GetPlayingAnimationTracks()) do
    track:Stop()
end

local function setMotor(name, cf)
    for _, v in pairs(char:GetDescendants()) do
        if v:IsA("Motor6D") and v.Name == name then
            v.Transform = cf
        end
    end
end

-- V POSE (solo una keyframe)
setMotor("RightShoulder", CFrame.Angles(math.rad(-60), 0, math.rad(35)))
setMotor("LeftShoulder",  CFrame.Angles(math.rad(-60), 0, math.rad(-35)))

setMotor("RightElbow", CFrame.Angles(math.rad(-10), 0, 0))
setMotor("LeftElbow",  CFrame.Angles(math.rad(-10), 0, 0))