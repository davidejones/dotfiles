local options = {
    -- Sets the line number on the left-hand side.
    number = true,
    -- Sets the relative line number on the left-hand side.
    relativenumber = true,
    -- Sets the number of whitespace a \t char represents (hitting the tab key on your keyboard).
    tabstop = 4,
    -- Sets the number of whitespace considered as an indent.
    shiftwidth = 4,
    -- Replaces \t with whitespaces.
    expandtab = true
}

-- Prepends vim.opt to all of the options defined above; using a loop.
for k, v in pairs (options) do
    vim.opt[k] = v
end
