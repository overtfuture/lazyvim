return {
	"mason-org/mason.nvim",
	keys = {
		{ "<leader>cM", "<cmd>Mason<cr>", desc = "Mason: Open" },
	},
	opts = {
		ensure_installed = {
			"gopls", -- Go language server
			"golangci-lint", -- Linter
			"goimports", -- Formatter
			"delve", -- Debugger for Go
			"gotests", -- Generate table-driven tests
			"impl", -- Generate interface method stubs
			"gomodifytags", -- Add/remove/modify struct tags
		},
	},
	---@param opts MasonSettings | {ensure_installed: string[]}
	config = function(_, opts)
		require("mason").setup(opts)

		local mr = require("mason-registry")
		mr:on("package:install:success", function()
			vim.defer_fn(function()
				require("lazy.core.handler.event").trigger({
					event = "FileType",
					buf = vim.api.nvim_get_current_buf(),
				})
			end, 100)
		end)

		mr.refresh(function()
			local seen = {}
			for _, tool in ipairs(opts.ensure_installed or {}) do
				if not seen[tool] then
					seen[tool] = true
					local ok, package = pcall(mr.get_package, tool)
					if ok and not package:is_installed() and not package:is_installing() then
						package:install()
					end
				end
			end
		end)
	end,
}
