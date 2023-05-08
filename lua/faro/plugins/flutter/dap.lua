local dap_status, dap = pcall(require, "dap")
if not dap_status then
  return
end

dap.adapters.dart = {
  type = "executable",
  command = "node",
  args = { "~/development/Dart-Code/out/dist/debug.js", "flutter" },
}

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = os.getenv("HOME") .. "/home/faro/development/flutter/bin/cache/dart-sdk/",
    flutterSdkPath = os.getenv("HOME") .. "/home/faro/development/flutter",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  },
}
