lua << EOF
local function setup(module, options)
  local ok, plugin = pcall(require, module)
  if ok and plugin.setup then
    plugin.setup(options or {})
  end
end

setup('mason')
setup('mason-lspconfig', {
  ensure_installed = { 'bashls', 'gopls', 'jsonls', 'lua_ls', 'pyright', 'terraformls', 'ts_ls', 'yamlls' },
  automatic_enable = true,
})
setup('blink.cmp')
setup('oil')
setup('gitsigns')
setup('which-key')
setup('fzf-lua')

local treesitter_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if treesitter_ok then
  treesitter.setup({
    ensure_installed = { 'bash', 'go', 'javascript', 'json', 'lua', 'python', 'ruby', 'terraform', 'typescript', 'yaml' },
    highlight = { enable = true },
    indent = { enable = true },
  })
end

local conform_ok, conform = pcall(require, 'conform')
if conform_ok then
  conform.setup({
    formatters_by_ft = {
      go = { 'gofmt' },
      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      json = { 'prettier' },
      lua = { 'stylua' },
      python = { 'ruff_format' },
      ruby = { 'rubocop' },
      terraform = { 'terraform_fmt' },
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      yaml = { 'prettier' },
    },
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
  })
end
EOF
