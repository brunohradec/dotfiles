return {
	-- Optional configuration for blink.cmp plugin from autocompletion:
	-- https://youtu.be/Q0cvzaPJJas?si=oGIuP0YKUZS3wFDk
	{
		"saghen/blink.cmp",
		dependencies = "rafamadriz/friendly-snippets",
		version = "*",
		opts = {
			keymap = { preset = "default" },
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono"
			},
		}
	},
	-- LSP configuration:
	-- https://youtu.be/bTWWFQZqzyI?si=D1oMIGlX1ekW39VM
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- LSP capabilites provided to LSP configs for autocompletion.
			-- If you don't use blink.cmp, remove this line and "capabilites = capabilities" 
			-- from each LSP setup.
			local capabilities = require('blink.cmp').get_lsp_capabilities()

			-- brew install lua-language-server
			require("lspconfig").lua_ls.setup{ capabilities = capabilities }

			-- npm install -g pyright
			require("lspconfig").pyright.setup{ capabilities = capabilities }

			-- npm install -g yaml-language-server
			require("lspconfig").yamlls.setup{ capabilities = capabilities }

			-- npm install -g bash-language-server
			require("lspconfig").bashls.setup{ capabilities = capabilities }

			-- npm install -g typescript-language-server typescript
			require("lspconfig").ts_ls.setup{ capabilities = capabilities }

			-- npm install -g vscode-langservers-extracted
			require("lspconfig").html.setup{ capabilities = capabilities }
			require("lspconfig").cssls.setup{ capabilities = capabilities }
			require("lspconfig").jsonls.setup{ capabilities = capabilities }
			require("lspconfig").eslint.setup{ capabilities = capabilities }
		end
	}
}

