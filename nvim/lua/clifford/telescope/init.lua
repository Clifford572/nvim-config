local M = {}
M.find_colors = function()
    require('telescope.builtin').find_files {
        prompt_title = " Colors ",
        cwd = "~/Colors",
    }
end
M.project_files = function()
    local opts = {}
    local ok = pcall(require'telescope.builtin'.git_files,opts)
    if not ok then require'telescope.builtin'.find_files(opts) end
end
M.dotfiles = function()
    require('telescope.builtin').find_files {
        prompt_title = " Dotfiles ",
        cwd = "~/.config",
    }
end
M.work = function()
    require('telescope.builtin').find_files{
        prompt_title = " Work ",
        cwd = "~/Projects",
    }
end
return M
