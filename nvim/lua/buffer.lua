require("bufferline").setup {}
local present, bufferline = pcall(require, "bufferline")
if not present then
  return
end
bufferline.setup {
  options = {
    offsets = {{filetype = "NvimTree", text = "", padding = 1}},
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    show_close_icon = true,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 25,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "thin",
    always_show_bufferline = true,
    diagnostics = false,
    custom_filter = function(buf_number)
      -- Func to filter out our managed/persistent split terms
      local present_type, type =
        pcall(
        function()
          return vim.api.nvim_buf_get_var(buf_number, "term_type")
        end
      )

      if present_type then
        if type == "vert" then
          return false
        elseif type == "hori" then
          return false
        else
          return true
        end
      else
        return true
      end
    end
  },
  highlights = {
    background = {
      guifg = "#d3c6aa",
      guibg = "#2f383e"
    },
    buffer_selected = {
      guifg = "#d3c6aa",
      guibg = "#2f383e",
      gui = "bold"
    },
    buffer_visible = {
      guifg = "#d3c6aa",
      guibg = "#374247"
    },
    close_button = {
      guifg = "#d3c6aa",
      guibg = "#2f383e"
    },
    close_button_visible = {
      guifg = "#d3c6aa",
      guibg = "#374247"
    },
    close_button_selected = {
      guifg = "#e67e80",
      guibg = "#2f383e"
    },
    fill = {
      guifg = "#d3c6aa",
      guibg = "#3c474d"
    },
    indicator_selected = {
      guifg = "#2f383e",
      guibg = "#2f383e"
    },
    separator = {
      guifg = "#2f383e",
      guibg = "#2f383e"
    },
    separator_visible = {
      guifg = "#2f383e",
      guibg = "#2f383e"
    },
    separator_selected = {
      guifg = "#2f383e",
      guibg = "#2f383e"
    },
    tab = {
      guifg = "#d3c6aa",
      guibg = "#374247"
    },
    tab_selected = {
      guifg = "#2f383e",
      guibg = "#87c095"
    },
    tab_close = {
      guifg = "#e67e80",
      guibg = "#2f383e"
    },
    modified = {
      guifg = "#e67e80",
      guibg = "#2f383e"
    },
    modified_visible = {
      guifg = "#e67e80",
      guibg = "#2f383e"
    },
    modified_selected = {
      guifg = "#87c095",
      guibg = "#2f383e"
    }
  }
}
