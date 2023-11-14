return {
  { "nvim-telescope/telescope-fzf-native.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-live-grep-args.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>",                                            desc = "Find Files" },
      { "<leader>f/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Grep string" },

    },
    opts = {
      defaults = {
        lsp_document_symbols = {
          fname_width = 160,
          show_line = true,
          symbol_width = 160,
        },
        dynamic_preview_title = true,
        path_display = {
          smart = "true",
          shorten = {
            len = 3,
            exclude = { 1, -1 },
          },
          truncate = true,
        },
        show_line = true,
        fname_width = 160,
        layout_strategy = "vertical",
        layout_config = {
          prompt_position = "top",
          vertical = { width = 0.9 },
          horizontal = { width = 0.9 },
        },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
