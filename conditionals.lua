local playerLevel = 5;
local playerHealth = 50;
local playerSpeed = 20;

if playerLevel > 3 and playerHealth > 30 then
    print("Eligible");
else
    print("Not Eligible");
end

if playerLevel <= 5 or playerSpeed <= 20 then
    print("Cannot continue");
else
    print("You can enter the level");
end