local flutter_status, flutter = pcall(require, "flutter-tools")
if not flutter_status then
  return
end

local M = {}

function M.setup()
  flutter.setup({
    debugger = {
      enabled = true,
      run_via_dap = true,
    },
    outline = { auto_open = false },
    decorations = {
      statusline = { device = true, app_version = true },
    },
    widget_guides = { enabled = true, debug = true },
    dev_log = { enabled = false, open_cmd = "tabedit" },
    lsp = {
      color = {
        enabled = true,
        background = true,
        virtual_text = false,
      },
      settings = {
        showTodos = true,
        renameFilesWithClasses = "prompt",
      },
    },
  })
end

return M
