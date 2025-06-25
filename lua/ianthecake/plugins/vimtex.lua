return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "zathura" -- oder skim, okular, etc.
		vim.g.vimtex_compiler_method = "latexmk"
	end,
}
