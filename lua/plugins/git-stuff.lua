return {
  {
    "tpope/vim-fugitive"
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  },
  {
    "tpope/vim-fugitive",
    config = function()
      -- Optional: Add any fugitive-specific configuration here
      vim.cmd("command! G status") -- Example command to show status
    end,
  },
  
  -- Visual diff view for comparing changes
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    config = function()
      require("diffview").setup()
    end,
  },
  
  -- Git conflict resolution
  {
    "akinsho/git-conflict.nvim",
    config = function()
      require("git-conflict").setup()
    end,
  },
  
  -- A UI for Git within Neovim
  {
    "TimUntersberger/neogit",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    config = function()
      require("neogit").setup()
    end,
  },
}
