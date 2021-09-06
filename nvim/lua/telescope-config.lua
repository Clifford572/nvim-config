require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

 --[[ vim.api.nvim_set_keymap('n','<C-p>',':Telescope find_files<CR>',{noremap = true, silent = true})
vim.api.nvim_set_keymap('n','<C-g>',':Telescope git_files<CR>',{noremap = true, silent = true})  ]]
vim.cmd[[
nnoremap <silent> ,c :lua require'clifford.telescope'.find_colors()<CR>
nnoremap <silent> ,d :lua require'clifford.telescope'.dotfiles()<CR>
nnoremap <silent> ,w :lua require'clifford.telescope'.work()<CR>
nnoremap <silent> <C-p> :lua require'clifford.telescope'.project_files()<CR>
]]
