--[[
Modes:

ModeChange = 'Normal'
mode=m.KeyDown:Connect(function(a)
if a == 'firstkey' then
ModeChange = 'TheModeName'
end
if a == 'secondkeybind' then
ModeChange = 'SecondModeName'
end
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mode:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == 'TheModeName' then
--First Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
-------------
elseif Mode == 'SecondModeName' then
--Second Mode--
if reanim.Humanoid.Jump then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 and reanim.Humanoid.Jump then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
--------------
end
srv.RenderStepped:Wait()
end
end)()
]]