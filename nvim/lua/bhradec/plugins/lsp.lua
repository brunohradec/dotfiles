return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- brew install lua-language-server
			require("lspconfig").lua_ls.setup{}

			-- npm install -g pyright
			require("lspconfig").pyright.setup{}

			-- npm install -g yaml-language-server
			require("lspconfig").yamlls.setup{}

			-- npm install -g bash-language-server
			require("lspconfig").bashls.setup{}

			-- npm install -g typescript-language-server typescript
			require("lspconfig").ts_ls.setup{}

			-- npm install -g vscode-langservers-extracted
			require("lspconfig").html.setup{}
			require("lspconfig").cssls.setup{}
			require("lspconfig").jsonls.setup{}
			require("lspconfig").eslint.setup{}
		end
	}
}

