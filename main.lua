--[ROCK, PAPER, SCISSORS]--

--Declaring Variable
playing = true

function getResult(choice1, choice2)
    --DRAW CONDITION--
    if choice1 == choice2 then
        io.write('\nYour Choice: ', result)
        io.write('\nComputer Choice: ', resultComp)
        io.write('\nResult: --DRAW--')
    --LOSE CONDITION--
    elseif
        choice1 == 'Rock' and choice2 == 'Paper' or
        choice1 == 'Paper' and choice2 == 'Scissors' or
        choice1 == 'Scissors' and choice2 == 'Rock'
    then
        io.write('\nYour Choice: ', result)
        io.write('\nComputer Choice: ', resultComp)
        io.write('\nResult: --YOU LOST--')
    --WIN CONDITION--
    elseif
        choice1 == 'Rock' and choice2 == 'Scissors' or
        choice1 == 'Paper' and choice2 == 'Rock' or
        choice1 == 'Scissors' and choice2 == 'Paper'
    then
        io.write('\nYour Choice: ', result)
        io.write('\nComputer Choice: ', resultComp)
        io.write('\nResult: --YOU WIN--')
    end
end

-- Repeat Unitl playing == false
repeat
    --Print the options to the player
    io.write('1 = ROCK\n2 = PAPER\n3 = SCISSORS')
    io.write('\nInput Choice: ')
    choice = tonumber(io.read())
    result = ''

    --Convert number choice to player choice
    if choice == 1 then result = 'Rock'
    elseif choice == 2 then result = 'Paper'
    elseif choice == 3 then result = 'Scissors'
    else
        io.write('\nWarning: no options')
        playing = true
    end

    --Computer choice selection
    math.randomseed(os.time())
    choiceComp = math.random(1, 3)
    resultComp = ''

    --Convert number choice to comp choice
    if choice == 1 then resultComp = 'Rock'
    elseif choice == 2 then resultComp = 'Paper'
    elseif choiceComp == 3 then resultComp = 'Scissors'
    end

    --Get Result
    getResult(choice, choiceComp)

    --Give user another chance to play
    io.write('\n\nPlay Again (y/n): ')
    restart = io.read()

    if restart == 'y' or restart == 'Y' then
        io.write('=============================\n')
		playing = true
    elseif restart == 'n' or restart == 'N' then
        playing = false
    else
        playing = false
    end
until playing == false