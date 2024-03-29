local M = {}

M.create_dir = function()
    vim.ui.input({ prompt = "Dir name: " }, function(input)
        if input == nil or input == "" then
            print("No input, aborting")
            return
        end

        vim.cmd("!mkdir -pv " .. input)
    end)
end

return M
