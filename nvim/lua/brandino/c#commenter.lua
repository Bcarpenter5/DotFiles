
-- this is The coment section
function LineNumber()
    local r,c = unpack(vim.api.nvim_win_get_cursor(0))
    print(r)
    return r
end


function WriteComments()
    --local variables
    local nextComma = 0
    local leave = false
    local stringStore
    local argsAmmount
    local argsArray = {}
    local lineNum = LineNumber()
    vim.cmd('normal k')
    local fulText = vim.api.nvim_buf_get_lines(0,lineNum-1,lineNum,0)

    -- set the string in a string variable instead of a array
    local fullString = fulText[1]
    fullString = string.gsub(fullString,"  ","")

    -- parse the arguemnts for in the arg section

    -- set upp a string to find the insides of the ()
    local startLocal  = string.find(fullString,'%(')
    local endLocal = string.find(fullString,"%)")
    local inBrackets = string.sub(fullString,startLocal+1,endLocal)
    argsAmmount = 0




    --store the arguments into a loop 
    while not leave do
        -- find next comma location
        nextComma = string.find(inBrackets,",")
        -- check that there is a comma 
        if nextComma == nil then
           leave = true
           nextComma = string.len(inBrackets)
        end
        --reset the sting so that it can be user for a proper project
        argsAmmount = argsAmmount + 1
        stringStore = string.sub(inBrackets,1,nextComma-1)
        table.insert(argsArray, stringStore)
        inBrackets = string.sub(inBrackets,nextComma+1,string.len(inBrackets))
    end

    --initialize variables
    inBrackets = string.sub(fullString,1,startLocal)
    leave = false
    local introArray = {}
    local introLength = 0


    -- find out the data type
    while not leave do
        -- find next comma location
        nextComma = string.find(inBrackets," ")
        -- check that there is a comma 
        if nextComma == nil then
           leave = true
           nextComma = string.len(inBrackets)
        end
        -- reset loop
        introLength =introLength + 1
        stringStore = string.sub(inBrackets,1,nextComma-1)
        table.insert(introArray, stringStore)
        inBrackets = string.sub(inBrackets,nextComma+1,string.len(inBrackets))
    end
    local returnType = introArray[introLength-1]

    print(returnType)


    --print out the user input
    local topBottom = "//*************************************************************************"
    local front = "//  "
    local tabed = "//       "

    lineNum = lineNum-1
    --start
    vim.fn.append(lineNum,topBottom)
    lineNum = lineNum + 1
    vim.fn.append(lineNum,front .. "Method: " .. fullString)
    lineNum = lineNum + 1
    vim.fn.append(lineNum,front .. "Purpose: ")
    lineNum = lineNum + 1
    for i=1,argsAmmount do
       if i==1 then
            vim.fn.append(lineNum,front .. "Args: " .. argsArray[i] .. " -- ")
        else
            vim.fn.append(lineNum,tabed .. argsArray[i] .. " -- ")
       end
        lineNum = lineNum + 1
    end
    vim.fn.append(lineNum,front .. "returns: " .. returnType)
    lineNum = lineNum + 1
    vim.fn.append(lineNum,topBottom)

end
