local M = {}

M.saludar = function()
	vim.ui.input({ prompt = "Tu nombre ? " }, function(input)
		local bufnr = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, { "hola " .. input })
	end)
end

M.setup = function()
	vim.keymap.set("n", "<leader>zz", function()
		M.saludar()
	end)
end

return M
