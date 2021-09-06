local prettier = function()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--double-quote"},
    stdin = true
  }
end
require("formatter").setup(
  {
    logging = false,
    filetype = {
      html = {prettier},
      css = {prettier},
      markdown = {prettier},
      python = {
          function()
              return{
                  exe = "autopep8",
                  args = {"--in-place --aggressive --aggressive", vim.api.nvim_buf_get_name(0)},
                  stdin = false,
              }
          end
      },
      lua = {
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
      }
    }
  }
)
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
autocmd!
autocmd BufWritePost *.html,*.css,*.md,*.lua,*.py : FormatWrite
augroup END
]],
  true
)
