local function curr_location()
    vim.ui.input({ prompt = "Dir name: " }, function(input)
        local path = vim.fn.expand("%:p:h")
        vim.cmd(path .. "/" .. input)
    end)
end

return {
    curr_location = curr_location,
}
