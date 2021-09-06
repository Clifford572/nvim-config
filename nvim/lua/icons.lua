local present, icons = pcall(require, "nvim-web-devicons")
if not present then
  return
end

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
  blue = "#88c0d0",
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

icons.setup {
  override = {
    c = {
      icon = "",
      color = colors.blue,
      name = "c"
    },
    css = {
      icon = "",
      color = colors.blue,
      name = "css"
    },
    deb = {
      icon = "",
      color = colors.cyan,
      name = "deb"
    },
    Dockerfile = {
      icon = "",
      color = colors.cyan,
      name = "Dockerfile"
    },
    html = {
      icon = "",
      color = colors.baby_pink,
      name = "html"
    },
    jpeg = {
      icon = "",
      color = colors.dark_purple,
      name = "jpeg"
    },
    jpg = {
      icon = "",
      color = colors.dark_purple,
      name = "jpg"
    },
    js = {
      icon = "",
      color = colors.sun,
      name = "js"
    },
    lock = {
      icon = "",
      color = colors.red,
      name = "lock"
    },
    lua = {
      icon = "",
      color = colors.blue,
      name = "lua"
    },
    mp3 = {
      icon = "",
      color = colors.white,
      name = "mp3"
    },
    mp4 = {
      icon = "",
      color = colors.white,
      name = "mp4"
    },
    out = {
      icon = "",
      color = colors.white,
      name = "out"
    },
    png = {
      icon = "",
      color = colors.dark_purple,
      name = "png"
    },
    py = {
      icon = "",
      color = colors.cyan,
      name = "py"
    },
    toml = {
      icon = "",
      color = colors.grey,
      name = "toml"
    },
    ts = {
      icon = "ﯤ ",
      color = colors.teal,
      name = "ts"
    },
    rb = {
      icon = "",
      color = colors.pink,
      name = "rb"
    },
    rpm = {
      icon = "",
      color = colors.orange,
      name = "rpm"
    },
    vue = {
      icon = "﵂",
      color = colors.vibrant_green,
      name = "vue"
    },
    xz = {
      icon = "",
      color = colors.sun,
      name = "xz"
    },
    zip = {
      icon = "",
      color = colors.sun,
      name = "zip"
    }
  }
}
