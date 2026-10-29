local board = {
    "   ", "   ", "   ",
    "   ", "   ", "   ",
    "   ", "   ", "   "
}

local currentPlayer = "X"

local function printBoard()
    print("\n")
    for i = 1, 9, 3 do
        print(board[i].. "|" ..board[i+1].. "|" ..board[i+2])
        if i < 7 then
            print("---+---+---")
        end
    end
    print("\n")
end

local function checkWin()
    local win = false
    local winner = nil
    for i = 1, 9, 3 do
        if board[i] == board[i+1] and board[i+1] == board[i+2] and board[i] == board[i+2] 
            and board[i] ~= "   " and board[i+1] ~= "   " and board[i+2] ~= "   " then
            win = true
            winner = board[i]
        elseif i == 1 then
            for j = 0,2,1 do
                if board[i+j] == board[i+j+3] and board[i+j+3] == board[i+j+6] and board[i+j] == board[i+j+6] 
                    and board[i+j] ~= "   " and board[i+j+3] ~= "   " and board[i+j+6] ~= "   " then
                    win = true
                    winner = board[i+j]
                end
            end
        end
    end
    if board[1] == board[5] and board[5] == board[9] and board[1] == board[9] and
        board[1] ~= "   " and board[5] ~= "   " and board[9] ~= "   " then
        win = true
        winner = board[5]
        end
    if board[3] == board[5] and board[5] == board[7] and board[3] == board[7] and
        board[3] ~= "   " and board[5] ~= "   " and board[7] ~= "   " then
        win = true
        winner = board[5]
    end
    if win then
        if winner == " X " then
            print("X wins")
            return true
        else
            print("O wins")
            return true
        end
    end
    return false
end

local function checkDraw()
    for i = 1, 9 do
        if board[i] == "   " then
            return false
        end
    end
    print("Draw!")
    return true
end

local function switchPlayer()
    if currentPlayer == "X" then
        currentPlayer = "O"
    else
        currentPlayer = "X"
    end
end


--Main Game Loop
local function playGame()
    while true do
        printBoard()
        io.write("Player " ..currentPlayer.. ". choose a position (1-9): ")
        local pos = tonumber(io.read())
        if pos and pos >= 1 and pos <= 9 and board[pos] == "   " then
            board[pos] = " "..currentPlayer.." "
            if checkWin() or checkDraw() then
                break
            else
                switchPlayer()
            end
        else
            print("Invalid move")
        end
    end
end

playGame()