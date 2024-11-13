return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
     config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "bash","c", "lua", "vim", "vimdoc", "jsdoc", "json", "javascript", "html", "markdown", "markdown_inline", "python", "regex" , "cpp"},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end,
 }
-------- some options to read later ------
--    incremental_selection = {
--      enable = true,
--      keymaps = {
--        init_selection = "<C-space>",
--        node_incremental = "<C-space>",
--        scope_incremental = false,
--        node_decremental = "<bs>",
--      },
--    },
--    textobjects = {
--      move = {
--        enable = true,
--        goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
--        goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
--        goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
--        goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
--      },
--    },
--  },
 -- ---@param opts TSConfig
 -- config = function(_, opts)
 --   if type(opts.ensure_installed) == "table" then
 --     opts.ensure_installed = LazyVim.dedup(opts.ensure_installed)
 --   end
 --   require("nvim-treesitter.configs").setup(opts)
 -- end,
