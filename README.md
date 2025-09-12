For installing 
sudo pacman -S git | git clone https://github.com/LzeDimitry/mini_cyber_punk_sothing_-_-.git
cp -r mini_cyber_punk_sothing_-_-/* .config/ | sudo chmod +x .config/hypr/slideshow.sh 




for nvim chad 
colors 
M.base_30 = {
  white = "#e0dce0",
  darker_black = "#171320",
  black = "#1c1830", -- nvim bg
  black2 = "#211c3a",
  one_bg = "#27223e",
  one_bg2 = "#2c2748",
  one_bg3 = "#36305a",
  grey = "#413d6f",
  grey_fg = "#4a4680",
  grey_fg2 = "#4f4b89",
  light_grey = "#555095",
  red = "#ff5c8a",
  baby_pink = "#ff2e6d",
  pink = "#d455ff",
  line = "#2c2748", -- for lines like vertsplit
  green = "#7fd6b5",
  vibrant_green = "#4eb287",
  blue = "#64bfff",
  nord_blue = "#4d8eff",
  yellow = "#ffb85c", -- можна прибрати якщо хочеш зовсім без жовтого
  sun = "#ff9aff",     -- замінив на рожево-фіолетовий відтінок
  purple = "#d455ff",
  dark_purple = "#a637ff",
  teal = "#7fffff",
  orange = "#ff8aff",   -- замінив на рожевий
  cyan = "#7fffff",
  statusline_bg = "#211c3a",
  lightbg = "#2c2348",
  pmenu_bg = "#ff2e6d",
  folder_bg = "#d455ff",
}

M.base_16 = {
  base00 = "#1c1830",
  base01 = "#27223e",
  base02 = "#2c2348",
  base03 = "#3b3560",
  base04 = "#544e7a",
  base05 = "#e0dce0",
  base06 = "#e0dce0",
  base07 = "#ffffff",
  base08 = M.base_30.pink,
  base09 = M.base_30.dark_purple,
  base0A = M.base_30.baby_pink,
  base0B = M.base_30.sun,       -- замінили жовтий на рожево-фіолетовий
  base0C = M.base_30.cyan,
  base0D = M.base_30.purple,
  base0E = M.base_30.pink,
  base0F = M.base_30.orange,    -- замінили жовтий на рожевий
}

M.type = "dark"

M.polish_hl = {
  syntax = {
    Include = { fg = M.base_30.pink },
    Function = { fg = M.base_30.baby_pink },
    Type = { fg = M.base_30.dark_purple },
  },
  treesitter = {
    ["@operator"] = { fg = M.base_30.cyan },
    ["@function"] = { fg = M.base_30.baby_pink },
    ["@function.macro"] = { fg = M.base_30.baby_pink },
    ["@keyword.directive"] = { fg = M.base_30.pink },
    ["@punctuation.bracket"] = { fg = M.base_30.cyan },
    ["@tag.attribute"] = { fg = M.base_30.dark_purple },
  },
}

M = require("base46").override_theme(M, "embark")

return M

