return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>sg",
        function()
          local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
          local cwd = (vim.v.shell_error == 0 and git_root) or vim.fn.getcwd()
          require("telescope.builtin").live_grep({ cwd = cwd, search_dirs = { cwd } })
        end,
        desc = "Grep (git root or cwd)",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        file_ignore_patterns = { "^build/" },
      },
    },
  },
}
