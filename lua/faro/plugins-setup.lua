-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- auto command that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")
	use("rktjmp/lush.nvim")

	use("bluz71/vim-nightfly-guicolors") -- prefered colorscheme
	use("folke/tokyonight.nvim") -- prefered colorscheme
	use("savq/melange-nvim")
	use({ "kartikp10/noctis.nvim", requires = { "rktjmp/lush.nvim" } })
	use({ "Everblush/everblush.nvim", as = "everblush" })
	use("B4mbus/oxocarbon-lua.nvim")
	use("lunarvim/Onedarker.nvim")
	use({ "adisen99/codeschool.nvim", requires = { "rktjmp/lush.nvim" } })
	use("rafamadriz/neon")
	use("EdenEast/nightfox.nvim") -- Packer

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy findin--[[ g ]]
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	use("BurntSushi/ripgrep")

	use("sharkdp/fd")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing & installing lsp servers
	use({ "williamboman/mason.nvim", run = ":MasonUpdate" })
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
	})
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")
	use("MunifTanjim/prettier.nvim")

	use("mattkubej/jest.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs")
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- git integration
	use("lewis6991/gitsigns.nvim")

	-- flutter integration
	use({
		"akinsho/flutter-tools.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("faro.plugins.flutter.flutter").setup()
		end,
	})

	use("mfussenegger/nvim-dap")

	-- plugin for wakatime
	use("wakatime/vim-wakatime")

	-- plugin for transparent background
	use("xiyaowong/transparent.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
