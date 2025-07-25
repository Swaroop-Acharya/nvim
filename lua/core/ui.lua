local M = {}

function M.setup()
  -- Set colorscheme
  local ok = pcall(vim.cmd.colorscheme, "github_dark_default")
  if not ok then
    vim.notify("github_dark_default colorscheme not found!", vim.log.levels.WARN)
  end

  -- Transparent background on every ColorScheme change
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
      vim.cmd [[
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NormalNC guibg=NONE ctermbg=NONE
        highlight Pmenu guibg=NONE ctermbg=NONE
        highlight FloatBorder guibg=NONE ctermbg=NONE
        highlight NormalFloat guibg=NONE ctermbg=NONE
        highlight TelescopeNormal guibg=NONE
        highlight TelescopeBorder guibg=NONE
      ]]
    end,
  })

  -- Custom highlight groups
  local highlights = {
    CursorLine     = { bg = "#2a2a3a" },
    SignColumn     = { bg = "NONE" },
    LineNr         = { fg = "#6c7086" },
    CursorLineNr   = { fg = "#c0caf5", bold = true },
    StatusLine     = { bg = "#1a1b26", fg = "#c0caf5" },
    StatusLineNC   = { bg = "#1a1b26", fg = "#6c7086" },
    TabLine        = { bg = "#1a1b26", fg = "#6c7086" },
    TabLineFill    = { bg = "#1a1b26" },
    TabLineSel     = { bg = "#1a1b26", fg = "#c0caf5", bold = true },
    WinBar         = { bg = "#1a1b26", fg = "#c0caf5" },
    WinBarNC       = { bg = "#1a1b26", fg = "#6c7086" },
    FloatBorder    = { fg = "#c0caf5", bg = "#1a1b26" },
    FloatTitle     = { fg = "#c0caf5", bg = "#1a1b26", bold = true },
    Pmenu          = { bg = "#1a1b26", fg = "#c0caf5" },
    PmenuSel       = { bg = "#2a2a3a", fg = "#c0caf5", bold = true },
    PmenuSbar      = { bg = "#1a1b26" },
    PmenuThumb     = { bg = "#2a2a3a" },
    Search         = { bg = "#2a2a3a", fg = "#c0caf5" },
    IncSearch      = { bg = "#2a2a3a", fg = "#c0caf5" },
    Visual         = { bg = "#2a2a3a" },
    VisualNOS      = { bg = "#2a2a3a" },
    Cursor         = { fg = "#c0caf5", bg = "#c0caf5" },
    lCursor        = { fg = "#c0caf5", bg = "#c0caf5" },
    DiffAdd        = { bg = "#1a2a1a", fg = "#9ece6a" },
    DiffChange     = { bg = "#1a1a2a", fg = "#7aa2f7" },
    DiffDelete     = { bg = "#2a1a1a", fg = "#f7768e" },
    DiffText       = { bg = "#1a1a2a", fg = "#7aa2f7", bold = true },
    Folded         = { bg = "#1a1b26", fg = "#6c7086" },
    FoldColumn     = { bg = "NONE", fg = "#6c7086" },
    NonText        = { fg = "#6c7086" },
    SpecialKey     = { fg = "#6c7086" },
    Whitespace     = { fg = "#6c7086" },
    ErrorMsg       = { fg = "#f7768e", bold = true },
    WarningMsg     = { fg = "#e0af68", bold = true },
    ModeMsg        = { fg = "#c0caf5", bold = true },
    MoreMsg        = { fg = "#c0caf5", bold = true },
    Question       = { fg = "#c0caf5", bold = true },
    Directory      = { fg = "#7aa2f7", bold = true },
    MatchParen     = { bg = "#2a2a3a", fg = "#c0caf5", bold = true },
    SpellBad       = { fg = "#f7768e", undercurl = true },
    SpellCap       = { fg = "#e0af68", undercurl = true },
    SpellLocal     = { fg = "#7aa2f7", undercurl = true },
    SpellRare      = { fg = "#bb9af7", undercurl = true },
  }

  for group, attrs in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, attrs)
  end

  -- UI options
  vim.opt.termguicolors = true
  vim.opt.cursorline = true
  vim.opt.cursorlineopt = "number"
  vim.opt.signcolumn = "yes:1"
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.scrolloff = 8
  vim.opt.sidescrolloff = 8
  vim.opt.wrap = false
  vim.opt.linebreak = true
  vim.opt.showbreak = "↪ "
  vim.opt.list = true
  vim.opt.listchars = {
    tab = "→ ",
    extends = "⟩",
    precedes = "⟨",
    trail = "·",
    nbsp = "␣",
    eol = "↲",
  }
  vim.opt.fillchars = {
    fold = " ",
    foldopen = "▼",
    foldclose = "▶",
    foldsep = " ",
    diff = "╱",
    eob = " ",
  }
  vim.opt.showmode = false
  vim.opt.ruler = false
  vim.opt.laststatus = 3
  vim.opt.winbar = "%=%m %f"
  vim.opt.winblend = 10
  vim.opt.pumblend = 10
  vim.opt.pumheight = 10
  vim.opt.pumwidth = 10
  vim.opt.wildoptions = "pum"

  vim.opt.mouse = "a"
  vim.opt.mousemodel = "extend"
  vim.opt.mousescroll = "ver:1,hor:1"
  vim.opt.mousefocus = true
  vim.opt.mousehide = true
  vim.opt.mousemoveevent = true
  vim.opt.mousetime = 500
end

return M
