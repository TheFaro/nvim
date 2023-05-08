local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup({
	PATH = "prepend",
})

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"angularls",
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"jsonls",
		"quick_lint_js",
		"lua_ls",
		"texlab",
		"intelephense",
		"pyright",
		"sqlls",
		"tailwindcss",
		"volar",
		"vuels",
		"lemminx",
		"yamlls",
		"emmet_ls",
	},

	automatic_installation = true,
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
