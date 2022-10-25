local status_cmp_ok, lsp_lines = pcall(require, "lsp_lines")
if not status_cmp_ok then
	return
end

lsp_lines.register_lsp_virtual_lines()
