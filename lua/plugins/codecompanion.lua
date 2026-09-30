return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "ANTHROPIC_API_KEY",
            },
          })
        end,
      },
      strategies = {
        chat = { adapter = "anthropic" },
        inline = { adapter = "anthropic" },
        agent = { adapter = "anthropic" },
      },
    },
    keys = {
      { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat" },
      { "<leader>aa", "<cmd>CodeCompanionChat Add<cr>", mode = "v", desc = "Add Selection to Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "Inline Assistant" },
      { "<leader>aA", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "Actions" },
    },
  },
}
