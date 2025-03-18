return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		lazygit = { enabled = true },
		styles = {
			lazygit = {
				height = 0,
				width = 0,
			},
		},
		-- dashboard = { enabled = true },
		-- explorer = { enabled = true },
		-- indent = { enabled = true },
		-- input = { enabled = true },
		-- notifier = {
		--   enabled = true,
		--   timeout = 3000,
		-- },
		-- picker = { enabled = true },
		-- quickfile = { enabled = true },
		-- scope = { enabled = true },
		-- scroll = { enabled = true },
		-- statuscolumn = { enabled = true },
		-- words = { enabled = true },
		-- styles = {
		--   notification = {
		--     -- wo = { wrap = true } -- Wrap notifications
		--   }
		-- }
	},
	keys = {
		-- Top Pickers & Explorer
		{
			"<leader>gg",
			function()
				Snacks.lazygit.open()
			end,
			desc = "Open Lazygit",
		},
	},
}
