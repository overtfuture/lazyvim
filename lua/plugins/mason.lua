return {
	"mason-org/mason.nvim",
	keys = {
		{ "<leader>cM", "<cmd>Mason<cr>", desc = "Mason: Open" },
	},
	opts = {
		ensure_installed = { "gotests" },
	},
}
