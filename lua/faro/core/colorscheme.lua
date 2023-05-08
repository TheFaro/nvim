-- pre configs
-- neon
-- vim.g.neon_style = "doom" -- default, doom, dark and light
-- vim.g.neon_bold = true
-- vim.g.neon_transparent = true

-- codeschool
-- vim.o.background = "light"
-- vim.g.codeschool_contrast_dark = "soft" -- hard, medium, soft
-- vim.g.codeschool_contrast_light = "soft"
-- vim.g.codeschool_hls_lspreference = "gray"
-- vim.g.codeschool_hls_cursor = "gray"
-- vim.g.codeschool_hls_highlight = "gray"
-- vim.g.codeschool_tabline_sel = "fg1"

-- nightfox colorscheme
vim.g.lightline = { colorscheme = "duskfox" } -- nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox

-- default color scheme
local status, _ = pcall(vim.cmd, "colorscheme carbonfox")
if not status then
	print("Colorscheme not found")
end

require("nightfox").setup({
	options = {
		transparent = true,
	},
})

--
-- codeschool Colorscheme
-- vim.o.background = "dark" -- or "light" for light mode
--
-- Load and setup function to choose plugin and language highlights
-- require("lush")(require("codeschool").setup({
--   plugins = {
--     "buftabline",
--     "coc",
--     "cmp", -- nvim-cmp
--     "fzf",
--     "gitgutter",
--     "gitsigns",
--     "lsp",
--     "lspsaga",
--     "nerdtree",
--     "netrw",
--     "nvimtree",
--     "neogit",
--     "packer",
--     "signify",
--     "startify",
--     "syntastic",
--     "telescope",
--     "treesitter",
--   },
--   langs = {
--     "c",
--     "clojure",
--     "coffeescript",
--     "csharp",
--     "css",
--     "elixir",
--     "golang",
--     "haskell",
--     "html",
--     "java",
--     "js",
--     "json",
--     "jsx",
--     "lua",
--     "markdown",
--     "moonscript",
--     "objc",
--     "ocaml",
--     "purescript",
--     "python",
--     "ruby",
--     "rust",
--     "scala",
--     "typescript",
--     "viml",
--     "xml",
--   },
-- }))

-- Ever blush
-- local status, everblush = pcall(require, "everblush")
-- if not status then
--   return
-- end
-- everblush.setup({
--   nvim_tree = {
--     constrast = false,
--   },
--   transparent_background = false,
-- })

-- Tokyo night color scheme
-- local status_tokyo, tokyonight = pcall(require, "tokyonight")
-- if not status_tokyo then
--   return
-- end
-- --
-- tokyonight.setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   light_style = "day", -- The theme is used when the background is set to light
--   transparent = false, -- Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   styles = {
--     -- Style to be applied to different syntax groups
--     -- Value is any valid attr-list value for `:help nvim_set_hl`
--     comments = { italic = false },
--     keywords = { italic = false },
--     functions = {},
--     variables = {},
--     -- Background styles. Can be "dark", "transparent" or "normal"
--     sidebars = "dark", -- style for sidebars, see below
--     floats = "dark", -- style for floating windows
--   },
--   sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--   day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--   hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--   dim_inactive = false, -- dims inactive windows
--   lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--
--   --- You can override specific color groups to use other groups or a hex color
--   --- function will be called with a ColorScheme table
--   -- on_colors = function(colors) end,
--
--   --- You can override specific highlights to use other groups or a hex color
--   --- function will be called with a Highlights and ColorScheme table
-- })
--
-- transparent background theme
-- local status, transparent = pcall(require, "transparent")
-- if not status then
--   return
-- end
--
-- transparent.setup({})
