require("lazy").setup({
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,         -- Load during startup
    priority = 1000,      -- Load before all other plugins
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
            functions = "bold",
            keywords = "italic",
            types = "italic,bold",
          },
        },
      })

      -- Apply colorscheme
      vim.cmd("colorscheme github_dark_default")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({})
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
})
