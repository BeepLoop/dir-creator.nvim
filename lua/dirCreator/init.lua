local M = {}

M.create_dir = function()
    vim.ui.input({ prompt = "Dir name: " }, function(input)
        if input == nil or input == "" then
            print("No input, aborting")
            return
        end

        for dir in string.gmatch(input, "([^%s]+)") do
            vim.cmd("!mkdir -pv " .. dir)
        end

    end)
end

return M
