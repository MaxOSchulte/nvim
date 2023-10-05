return {
    { "nvim-telescope/telescope-fzf-native.nvim" },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function()
                require("telescope").load_extension("fzf")
            end,
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
