require("lazy").setup({
{
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false,         -- load at startup
  priority = 1000,      -- load before other plugins
  config = function()
    require('github-theme').setup({
      -- Optional theme settings go here
      options = {
        styles = {
          comments = 'italic',
          functions = 'bold',
          keywords = 'italic',
          types = 'italic,bold',
        },
      }
    })
    vim.cmd('colorscheme github_dark')  -- you can also try github_light or github_dimmed
  end,
}

})