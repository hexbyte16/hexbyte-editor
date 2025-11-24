return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "windwp/nvim-ts-autotag",
            "nvim-treesitter/playground",
        },

        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                    disable = { "netrw" }, -- fix: netrw has no parser
                },

                indent = { enable = true },

                autotag = { enable = true },

                playground = {
                    enable = true, -- enables :InspectTree
                },

                ensure_installed = {
                    "lua",
                    "typescript",
                    "tsx",
                    "php",
                },

                auto_install = false,
            })
        end
    }
}

