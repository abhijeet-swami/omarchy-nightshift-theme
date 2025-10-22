local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = function()
				vim.cmd("set termguicolors")

				local colors = {
					bg = "#1a1b1e",
					fg = "#eaeaef",
					black = "#2b2d31",
					red = "#ef5d67",
					green = "#8edb73",
					yellow = "#f7c553",
					blue = "#7ca5ff",
					magenta = "#e29ef3",
					cyan = "#7dd8d3",
					white = "#f8f8fa",
					bright_black = "#505258",
					bright_red = "#ff7680",
					bright_green = "#a2ee8b",
					bright_yellow = "#ffd86f",
					bright_blue = "#97b6ff",
					bright_magenta = "#efb5f9",
					bright_cyan = "#94e8e3",
					bright_white = "#ffffff",
					subtle = "#404040",
					border = "#7ca5ff",
					selection_bg = "#b2c3ff",
					selection_fg = "#2b2d31",
					cursor = "#f2a0a0",
					cursor_text = "#2b2d31",
				}

				vim.cmd("highlight clear")
				local function set_hl(group, opts)
					vim.api.nvim_set_hl(0, group, opts)
				end

				set_hl("Normal", { fg = colors.fg, bg = colors.bg })
				set_hl("CursorLine", { bg = colors.bg, blend = 20 })
				set_hl("CursorColumn", { bg = colors.bg, blend = 20 })
				set_hl("LineNr", { fg = colors.bright_black })
				set_hl("CursorLineNr", { fg = colors.blue, bold = true })
				set_hl("SignColumn", { fg = colors.bright_black, bg = colors.bg })
				set_hl("Visual", { bg = colors.selection_bg, fg = colors.selection_fg })
				set_hl("VisualNOS", { bg = colors.subtle })
				set_hl("Pmenu", { fg = colors.fg, bg = colors.subtle })
				set_hl("PmenuSel", { fg = colors.bg, bg = colors.blue, bold = true })
				set_hl("PmenuSbar", { bg = colors.subtle })
				set_hl("PmenuThumb", { bg = colors.green })
				set_hl("StatusLine", { fg = colors.fg, bg = colors.subtle })
				set_hl("StatusLineNC", { fg = colors.bright_black, bg = colors.subtle })
				set_hl("VertSplit", { fg = colors.border })
				set_hl("WinSeparator", { fg = colors.border })
				set_hl("Folded", { fg = colors.bright_black, bg = colors.subtle, italic = true })
				set_hl("FoldColumn", { fg = colors.bright_black, bg = colors.bg })
				set_hl("TabLine", { fg = colors.bright_black, bg = colors.bg })
				set_hl("TabLineFill", { bg = colors.bg })
				set_hl("TabLineSel", { fg = colors.bg, bg = colors.blue, bold = true })

				set_hl("Comment", { fg = colors.bright_black, italic = true })
				set_hl("Constant", { fg = colors.magenta })
				set_hl("String", { fg = colors.green })
				set_hl("Character", { fg = colors.cyan })
				set_hl("Number", { fg = colors.yellow })
				set_hl("Boolean", { fg = colors.red, bold = true })
				set_hl("Float", { fg = colors.yellow })
				set_hl("Identifier", { fg = colors.fg })
				set_hl("Function", { fg = colors.blue, bold = true })
				set_hl("Function.builtin", { fg = colors.cyan, bold = true })
				set_hl("Statement", { fg = colors.magenta, bold = true })
				set_hl("Conditional", { fg = colors.magenta })
				set_hl("Repeat", { fg = colors.yellow })
				set_hl("Label", { fg = colors.cyan })
				set_hl("Operator", { fg = colors.cyan })
				set_hl("Keyword", { fg = colors.blue, bold = true })
				set_hl("Exception", { fg = colors.red })
				set_hl("PreProc", { fg = colors.yellow })
				set_hl("Include", { fg = colors.yellow })
				set_hl("Macro", { fg = colors.bright_red })
				set_hl("Type", { fg = colors.cyan, italic = true })
				set_hl("StorageClass", { fg = colors.red })
				set_hl("Structure", { fg = colors.yellow })
				set_hl("Typedef", { fg = colors.yellow })
				set_hl("Special", { fg = colors.cyan })
				set_hl("SpecialChar", { fg = colors.cyan })
				set_hl("Tag", { fg = colors.magenta })
				set_hl("Delimiter", { fg = colors.fg })
				set_hl("Debug", { fg = colors.red })
				set_hl("Title", { fg = colors.blue, bold = true })
				set_hl("Directory", { fg = colors.cyan })

				set_hl("DiagnosticError", { fg = colors.red })
				set_hl("DiagnosticWarn", { fg = colors.yellow })
				set_hl("DiagnosticInfo", { fg = colors.cyan })
				set_hl("DiagnosticHint", { fg = colors.green })
				set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
				set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
				set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.cyan })
				set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.green })

				set_hl("@text", { link = "Normal" })
				set_hl("@comment", { link = "Comment" })
				set_hl("@constant", { link = "Constant" })
				set_hl("@constant.builtin", { fg = colors.red, bold = true })
				set_hl("@string", { link = "String" })
				set_hl("@character", { link = "Character" })
				set_hl("@number", { link = "Number" })
				set_hl("@boolean", { link = "Boolean" })
				set_hl("@float", { link = "Float" })
				set_hl("@function", { link = "Function" })
				set_hl("@function.builtin", { link = "Function.builtin" })
				set_hl("@method", { link = "Function" })
				set_hl("@keyword", { link = "Keyword" })
				set_hl("@keyword.function", { link = "Keyword" })
				set_hl("@keyword.operator", { link = "Operator" })
				set_hl("@type.builtin", { fg = colors.cyan, bold = true })
				set_hl("@variable", { fg = colors.fg })
				set_hl("@variable.builtin", { fg = colors.red, bold = true, italic = true })
				set_hl("@parameter", { fg = colors.yellow, italic = true })
				set_hl("@tag.attribute", { fg = colors.yellow })
				set_hl("@constructor", { fg = colors.magenta })
				set_hl("@namespace", { fg = colors.cyan })
				set_hl("@text.uri", { fg = colors.green, underline = true })
				set_hl("@text.todo", { fg = colors.bg, bg = colors.yellow, bold = true })
				set_hl("Search", { fg = colors.black, bg = colors.red })
			end,
		},
	},
}

return M
