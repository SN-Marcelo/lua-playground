--String
local username = "Marcelo";
--Number
local age = 22;
print("Hello " ..username.. "!\nYou are " ..age.. " years old");

--Boolean
local happy = true;

--Table (like array)
local fruits = {"apple", "banana", "cherry"}
--Index start in 1, not 0
print(fruits[1])

--Table (like dictionary)
local person = {
    name = "Marcelo",
    age = 22,
    job = "software developer"
}
print(person.name)

--Nulls
local app = nil
print(app)