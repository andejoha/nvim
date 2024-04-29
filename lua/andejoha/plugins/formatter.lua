return {
	"mhartington/formatter.nvim",
	evnet = { "BufReadPre", "BufWritePost" },
	config = function()
		require("formatter").setup({
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
				javascript = { require("formatter.filetypes.javascript").prettier },
				typescript = { require("formatter.filetypes.typescript").prettier },
				json = { require("formatter.filetypes.json").prettier },
				html = { require("formatter.filetypes.html").prettier },
				css = { require("formatter.filetypes.css").prettier },
				yaml = { require("formatter.filetypes.yaml").prettier },
				markdown = { require("formatter.filetypes.markdown").prettier },
				python = { require("formatter.filetypes.python").autopep8 },
			},
		})

		-- Format on save
		local augroup = vim.api.nvim_create_augroup
		local autocmd = vim.api.nvim_create_autocmd
		augroup("__formatter__", { clear = true })
		autocmd("BufWritePost", {
			group = "__formatter__",
			command = ":FormatWrite",
		})
	end,
}
