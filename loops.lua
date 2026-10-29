--For loops

--Iterate from 1 to 5, increasing by one each time
--similar to for loop in c++: for(int i = 1; i<=5;i++){...}
for i=1,5 do
    print(i)
end

print("----")

--Iterate from 1 to 9, increasing by two each time
--similar to for loop in c++: for(int i = 1; i<=10;i+=2){...}
for i=1,10,2 do
    print(i)
end

print("-----")

--Iterate from 10 to 1, decreasing by one each time
--similar to for loop in c++: for(int i = 10; i>=1;i--){...}
for i=10,1,-1 do
    print(i)
end

print("-----")

--Iterate the array
local fruits = {"apple", "pear", "banana"}
for i = 1, #fruits do
    print(fruits[i])
end

print("-----")

--While
local counter = 1;
while counter <= 5 do
    print("Hello")
    counter = counter + 1
end

print("-----")

--break
for i = 1, 10 do
    if i == 5 then
        break
    end
    print(i)
end