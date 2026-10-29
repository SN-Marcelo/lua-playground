--Write mode (overwrite)
local file = io.open("file.txt", "w")
if file then
    file:write("Hello world\n")
    file:close()
end

--Append mode (write)
local file2 = io.open("file.txt", "a")
if file2 then
    file2:write("Goodbye world")
    file2:close()
end

--Read mode
local file3 = io.open("file.txt", "r")
--Reading all file
if file3 then
    local content = file3:read("a")
    print(content)
    file3:close()
end

--Remove file
os.remove("file2.txt")