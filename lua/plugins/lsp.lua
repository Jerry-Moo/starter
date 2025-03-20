return {
  -- formatters
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    opts = {
      default_format_opts = {
        timeout_ms = 3000,
        async = false,           -- not recommended to change
        quiet = false,           -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters_by_ft = {
        lua = { "lua_ls" },  -- 使用 lua-language-server 作为格式化工具
        python = { "ruff" }, -- 使用 ruff 代替 black
        sh = { "shfmt" },
        go = { "gopls" },    -- 使用 gopls 作为格式化工具
        json = { "jsonls" },
        yaml = { "yamlls" },
        dockerfile = { "dockerls" },
        docker_compose = { "docker_compose_language_service" },
        typescript = { "vtsls" },
        javascript = { "vtsls" },
        php = { "phpactor" },
        css = { "tailwindcss" },  -- 可以用于 Tailwind CSS 文件
        html = { "tailwindcss" }, -- 如果你有使用 Tailwind 的 HTML 文件
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- 语言服务器
        "lua-language-server",
        "gopls",
        "json-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "yaml-language-server",
        "vtsls",
        "pyright",
        "ruff",
        "phpactor",
        "tailwindcss-language-server",
        -- 其他工具保留
        "shfmt",
      },
    },
  },
}
