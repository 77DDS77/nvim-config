return {
	{
		"rmagatti/auto-session",
		dependencies = {
			"nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
		},
		config = function()
			require("auto-session").setup({
				auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },

				cwd_change_handling = {
					restore_upcoming_session = true, -- Disabled by default, set to true to enable
					pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
					post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
						require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
					end,
				},

				session_lens = {
					-- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
					load_on_setup = true,
					theme_conf = { border = true },
					previewer = false,
					buftypes_to_ignore = {}, -- list of buffer types that should not be deleted from current session when a new one is loaded
				},

				-- Set mapping for searching a session.
				vim.keymap.set("n", "<leader>sl", require("auto-session.session-lens").search_session, {
					noremap = true,
					desc = "[S]ession [L]ist",
				}),
			})
		end,
	},
}
