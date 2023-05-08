local prettier_status, prettier = pcall(require, "prettier")
if not prettier_status then
  return
end

prettier.setup({
  bin = "prettier",
  filetypes = {
    "css",
    "html",
    "graphql",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
