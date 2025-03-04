-- Check if arm gcc exists
local handle = io.popen("command -v arm-none-eabi-gcc")
local arm_none_eabi_gcc
if handle then
	arm_none_eabi_gcc = handle:read("*a"):sub(1, -2)
	handle:close()
else
	arm_none_eabi_gcc = nil
end

print(arm_none_eabi_gcc)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
	capabilities = capabilities,
	cmd = {
		vim.fn.stdpath("data") .. "/mason/bin/clangd",
		arm_none_eabi_gcc and "--query-driver=" .. arm_none_eabi_gcc,
		"--clang-tidy",
	},
})

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}
