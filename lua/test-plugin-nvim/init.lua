local test_plugin = {}

test_plugin.create_dir = function()
    vim.ui.input({ prompt = "Dir name: " }, function(input)
        if input == nil then
            print("No input, aborting.")
            return
        end

        vim.cmd("!mkdir -pv " .. input)
    end)
end

return test_plugin
