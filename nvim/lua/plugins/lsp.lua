return {
  {
    {
      "williamboman/mason.nvim",
      opts = {
        -- 開啟服務server
        ensure_installed = {
          "gopls",
          "goimports",
          "stylua",
          "selene",
          "luacheck",
          "shellcheck",
          "shfmt",
          "tailwindcss-language-server",
          "typescript-language-server",
          "css-lsp",
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      server = {
        flask8 = {},
        ruff_lsp = {},
        gopls = {
          settings = {
            gopls = {
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              analyses = {
                fieldalignment = true,
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              semanticTokens = true,
            },
          },
        },
      },
    },
  },
}
