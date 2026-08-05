return {
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
				icons_enabled = false,
				component_separators = "",
				section_separators = "",
			})

			opts.sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					{
						"filename",
						path = 1,
						symbols = {
							modified = " [+]",
							readonly = " [RO]",
							unnamed = "[No Name]",
							newfile = " [New]",
						},
					},
				},
				lualine_x = {
					"diagnostics",
					{
						"diff",
						symbols = { added = "+", modified = "~", removed = "-" },
					},
					"filetype",
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			}
		end,
	},
}
