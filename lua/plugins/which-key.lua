return {
	{
		"folke/which-key.nvim",
		keys = {
			{
				"<leader>hv?",
				function()
					require("which-key").show({ keys = "<leader>hv" })
				end,
				desc = "Vim Help Keymaps",
			},
			{ "<leader>hvk", "<cmd>help quickref<cr>", desc = "Vim Quick Reference" },
			{ "<leader>hvi", "<cmd>help index<cr>", desc = "Vim Help Index" },
			{ "<leader>hvm", "<cmd>help motion.txt<cr>", desc = "Motions" },
			{ "<leader>hvo", "<cmd>help operator<cr>", desc = "Operators" },
			{ "<leader>hvt", "<cmd>help text-objects<cr>", desc = "Text Objects" },
			{ "<leader>hvr", "<cmd>help registers<cr>", desc = "Registers" },
			{ "<leader>hva", "<cmd>help q<cr>", desc = "Macros" },
			{ "<leader>hvw", "<cmd>help windows.txt<cr>", desc = "Windows" },
			{ "<leader>hvb", "<cmd>help buffers<cr>", desc = "Buffers" },
			{ "<leader>hvf", "<cmd>help fold-commands<cr>", desc = "Folds" },
			{ "<leader>hvq", "<cmd>help quickfix<cr>", desc = "Quickfix" },
			{ "<leader>hvs", "<cmd>help pattern<cr>", desc = "Search Patterns" },
			{ "<leader>hvc", "<cmd>help cmdline-editing<cr>", desc = "Command-line Editing" },
			{ "<leader>hvx", "<cmd>help :global<cr>", desc = "Global Command" },
			{ "<leader>hv.", "<cmd>help repeat<cr>", desc = "Repeat / Dot Command" },
		},
		opts = function(_, opts)
			opts.spec = opts.spec or {}
			vim.list_extend(opts.spec, {
				{ "<leader>hv", group = "vim cheatsheet" },
				{ "<leader>a", group = "ai" },
				{ "<leader>d", group = "debug" },
				{ "<leader>dg", group = "go debug" },
				{ "<leader>t", group = "terminal" },
				{ "<leader>f", group = "find" },
				{ "<leader>c", group = "code" },
				{ "<leader>g", group = "git + github" },
				{ "<leader>n", group = "noice" },
				{ "<leader>m", group = "mason" },
				{ "<leader>tg", desc = "LazyGit" },
			})
		end,
	},
}
