local colorscheme = "nthere"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	colorscheme = "default"
	return
end
