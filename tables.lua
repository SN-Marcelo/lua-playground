--Table as Array
local fruits = { "apple", "banana", "pear" }
print(fruits[1])

table.insert(fruits, "orange") --adds object to the end of the table
print(fruits[4])
table.remove(fruits) --removes last object in table
print(fruits[4])

table.insert(fruits, "orange")
table.remove(fruits, 2) --remove object in 2nd position
print(fruits[2])

--Table as Dictionary
local player = {
    name = "Marcelo",
    score = 1200,
    level = 5
}
print("Player name: " ..player.name)
print("Player name (alt): " ..player["name"])

print("Player score (before): " ..player.score)
player.score = player.score + 100
print("Player score (after): " ..player.score)

--Iterating a Table as Array (use ipairs)
local colors = {"red", "green", "blue"}
for index,value in ipairs(colors) do
    print("color " ..index.. ": " ..value)
end

--Iterating a Table as Dictionary (use pairs)
local player2 = {
    name = "Giancarlo",
    score = 1400,
    level = 2
}
for key, value in pairs(player2) do
    print(key ..": " ..value)
end

--Nested Tables
local game = {
    title = "My game",
    description = "This is a game",
    stats = {
        score = 1000,
        lives = 3
    }
}

print(game.title)
print(game.stats.score)

--Metatables
local car = {speed = 60}
local metatable = {
    __index = function(table, key)
        if key == "maxSpeed" then
            return 200
        end
    end
}

setmetatable(car, metatable)

print(car.speed)
print(car.maxSpeed)