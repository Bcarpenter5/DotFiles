function BlockComment(name)
    local lineNum = 0
    local topBottom = "//////////////////////////////////////////////////////////////////////////////////////"
    local front = "// Project: "
    local author = "// Author: Brandon Carpenter "
    local tabed = "//       "
    local updates = "// updates: "
    -- set the date
    local date = os.date("%m/%d/%Y")

    if name ~= nil then
        front = front .. name
    end

    --start
    vim.fn.append(lineNum,topBottom)
    lineNum = lineNum + 1

    vim.fn.append(lineNum,front)
    lineNum = lineNum + 1

    for i=1,2 do
        vim.fn.append(lineNum,tabed)
        lineNum = lineNum + 1
    end

    vim.fn.append(lineNum,author)
    lineNum = lineNum + 1

    for i=1,3 do
        vim.fn.append(lineNum,tabed)
        lineNum = lineNum + 1
    end

    vim.fn.append(lineNum,updates)
    lineNum = lineNum + 1

    vim.fn.append(lineNum,tabed .. "created: " .. date)
    lineNum = lineNum + 1

    for i=1,2 do
        vim.fn.append(lineNum,tabed)
        lineNum = lineNum + 1
    end

    vim.fn.append(lineNum,topBottom)

end
