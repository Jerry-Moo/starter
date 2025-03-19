return {
  -- theme
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "gruvbox" },
  },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/nvim-treesitter-context",
    },
    highlight = { enable = true },
    indent = { enable = false },
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "rust",
        "zig",
        "lua",
        "go",
        "python",
        "proto",
        "typescript",
        "javascript",
        "tsx",
        "bash",
        "css",
        "scss",
        "diff",
        "dockerfile",
        "gomod",
        "gosum",
        "gowork",
        "graphql",
        "html",
        "sql",
        "markdown",
        "markdown_inline",
        "json",
        "jsonc",
        "yaml",
        "ninja",
        "rst",
      },
    },
  },
}
