return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "BufReadPost",
		opts = {
			suggestion = {
				enabled = false,
				-- auto_trigger = true,
				-- hide_during_completion = vim.g.ai_cmp,
				-- keymap = {
				--     accept = false, -- handled by nvim-cmp / blink.cmp
				--     next = false,
				--     prev = false,
				-- },
			},
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
			},
		},
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = { "zbirenbaum/copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
