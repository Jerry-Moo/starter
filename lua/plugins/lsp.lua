return {
  -- formatters
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff" }, -- 使用 ruff 代替 black
        sh = { "shfmt" },
        go = { "gofmt" },
        json = { "prettier" },
        yaml = { "prettier" },
        typescript = { "prettier" },
        javascript = { "prettier" },
        php = { "php-cs-fixer" },
        css = { "prettier" },
        html = { "prettier" },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- 格式化工具
        "stylua",
        "gofmt",
        "prettier",
        "php-cs-fixer",
        "ruff",
        "shfmt",
        -- 语言服务器
        "gopls",
        "json-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "yaml-language-server",
        "vtsls",
        "pyright",
        "phpactor",
        "tailwindcss-language-server",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = {
        enabled = false,
        exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
      },
      servers = {
        vtsls = {},
        lua_ls = {
          mason = true,
          enabled = false,
        },
        gopls = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern("go.work", "go.mod", ".git")(...)
          end,
        },
      },
    },
  },
}
