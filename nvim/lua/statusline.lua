local gl = require("galaxyline")
local gls = gl.section
local condition = require("galaxyline.condition")
require("galaxyline").short_line_list = {"NvimTree"}

local colors = {
  white = "#fff9e8",
  darker_black = "#272f35",
  black = "#2b3339", --  nvim bg
  black2 = "#323a40",
  one_bg = "#333b41",
  one_bg2 = "#363e44",
  one_bg3 = "#3a4248",
  grey = "#4a5258",
  grey_fg = "#50585e",
  grey_fg2 = "#545c62",
  light_grey = "#586066",
  red = "#e67e80",
  baby_pink = "#ce8196",
  pink = "#ff75a0",
  line = "#3a4248", -- for lines like vertsplit
  green = "#83c092",
  vibrant_green = "#a7c080",
  nord_blue = "#78b4ac",
  dark_blue = "#88c0d0",
  blue = "#7fbbb3",
  yellow = "#dbbc7f",
  sun = "#d1b171",
  purple = "#b4bbc8",
  dark_purple = "#d699b6",
  teal = "#69a59d",
  orange = "#e69875",
  cyan = "#95d1c9",
  statusline_bg = "#2e363c",
  lightbg = "#3d454b",
  lightbg2 = "#333b41",
  pmenu_bg = "#83c092",
  folder_bg = "#7fbbb3"
}

gls.left[1] = {
  FirstElement = {
    provider = function()
      return "▋"
    end,
    highlight = {colors.green, colors.green}
  }
}

gls.left[2] = {
  statusIcon = {
    provider = function()
      return "  "
    end,
    highlight = {colors.statusline_bg, colors.green},
    separator = " ",
    separator_highlight = {colors.green, colors.lightbg}
  }
}

gls.left[3] = {
  FileIcon = {
    provider = "FileIcon",
    condition = condition.buffer_not_empty,
    highlight = {colors.white, colors.lightbg}
  }
}

gls.left[4] = {
  FileName = {
    provider = {"FileName"},
    -- condition = condition.buffer_not_empty,
    highlight = {colors.white, colors.lightbg},
    separator = " ",
    separator_highlight = {colors.lightbg, colors.lightbg2}
  }
}

gls.left[5] = {
  current_dir = {
    provider = function()
      local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      return "  " .. dir_name .. " "
    end,
    highlight = {colors.grey_fg2, colors.lightbg2},
    separator = " ",
    separator_highlight = {colors.lightbg2, colors.statusline_bg}
  }
}

local checkwidth = function()
  local squeeze_width = vim.fn.winwidth(0) / 2
  if squeeze_width > 30 then
    return true
  end
  return false
end

gls.left[6] = {
  DiffAdd = {
    provider = "DiffAdd",
    condition = checkwidth,
    icon = "  ",
    highlight = {colors.vibrant_green, colors.statusline_bg}
  }
}

gls.left[7] = {
  DiffModified = {
    provider = "DiffModified",
    condition = checkwidth,
    icon = "   ",
    highlight = {colors.yellow, colors.statusline_bg}
  }
}

gls.left[8] = {
  DiffRemove = {
    provider = "DiffRemove",
    condition = checkwidth,
    icon = "  ",
    highlight = {colors.orange, colors.statusline_bg}
  }
}

gls.left[9] = {
  DiagnosticError = {
    provider = "DiagnosticError",
    icon = "  ",
    highlight = {colors.red, colors.statusline_bg}
  }
}

gls.left[10] = {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    icon = "  ",
    highlight = {colors.blue, colors.statusline_bg}
  }
}

gls.right[1] = {
  lsp_status = {
    provider = function()
      local clients = vim.lsp.get_active_clients()
      if next(clients) ~= nil then
        return " " .. "  " .. " LSP "
      else
        return ""
      end
    end,
    highlight = {colors.grey_fg2, colors.statusline_bg}
  }
}

gls.right[2] = {
  GitIcon = {
    provider = function()
      return " "
    end,
    condition = require("galaxyline.condition").check_git_workspace,
    highlight = {colors.grey_fg2, colors.statusline_bg},
    separator = " ",
    separator_highlight = {colors.statusline_bg, colors.statusline_bg}
  }
}

gls.right[3] = {
  GitBranch = {
    provider = "GitBranch",
    condition = require("galaxyline.condition").check_git_workspace,
    highlight = {colors.grey_fg2, colors.statusline_bg}
  }
}

gls.right[4] = {
  viMode_icon = {
    provider = function()
      return ""
    end,
    highlight = {colors.lightbg, colors.lightbg},
    separator = " ",
    separator_highlight = {colors.lightbg, colors.statusline_bg}
  }
}

gls.right[5] = {
  some_icon = {
    provider = function()
      return "  "
    end,
    separator = "",
    separator_highlight = {colors.vibrant_green, colors.lightbg},
    highlight = {colors.statusline_bg, colors.vibrant_green}
  }
}

gls.right[6] = {
  line_percentage = {
    provider = function()
      local current_line = vim.fn.line(".")
      local total_line = vim.fn.line("$")

      if current_line == 1 then
        return "  Top "
      elseif current_line == vim.fn.line("$") then
        return "  Bot "
      end
      local result, _ = math.modf((current_line / total_line) * 100)
      return "  " .. result .. "% "
    end,
    highlight = {colors.statusline_bg, colors.vibrant_green}
  }
}
vim.api.nvim_exec(
  [[
au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]],
  false
)
