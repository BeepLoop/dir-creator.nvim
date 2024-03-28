local function create_dir()
    vim.ui.input({ prompt = "Dir name: " }, function(input)
        if input == nil then
            print("No input, aborting.")
            return
        end

        vim.cmd("!mkdir -pv " .. input)
    end)
end

return {
    create_dir = create_dir
}
