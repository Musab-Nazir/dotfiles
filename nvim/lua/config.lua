-- Git gutter signs
require('gitsigns').setup{
	signs = {
			add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
			change       = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
			delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
			topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
			changedelete = {hl = 'GitSignsChange', text = 'x', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
			},
}

-- LSP config
local lsp_installer = require("nvim-lsp-installer")

-- Include the servers you want to have installed by default below
local servers = {
  "tsserver",
  "clojure_lsp",
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end
	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts = { noremap = true, silent = true }

	buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts)
	-- buf_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "<leader>rn", ":lua vim.lsp.util.rename()<CR>", opts)
	-- buf_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
	-- buf_set_keymap("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
	-- buf_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
	-- buf_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
	-- buf_set_keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
	buf_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", opts)
end
-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = {on_attach = on_attach,}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


