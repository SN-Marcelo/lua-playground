--Funtion without return value
local function greet(name)
    print("Hello " ..name.. "!")
end
greet("Marcelo")

--Function with return value
local function add(a,b)
    return a + b
end
local sum = add(3,5)
print(sum)

--Function with more than one value returned
local function getMinMax(a,b)
    if a > b then
        return b,a
    else
        return a,b
    end
end
local min,max = getMinMax(5,2)
print("Min: " ..min.. "\nMax: " ..max)

--Recursive Function
local function factorial(n)
    if n==0 then
        return 1;
    else
        return n*factorial(n-1);
    end
end

local fact = factorial(4);
print(fact);