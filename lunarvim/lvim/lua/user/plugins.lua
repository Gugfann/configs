-- Additional Plugins
lvim.plugins = {
    { "morhetz/gruvbox" },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "christoomey/vim-tmux-navigator" },
    { "kdheepak/lazygit.nvim"},
    { "MunifTanjim/nui.nvim"},
    { "VonHeikemen/fine-cmdline.nvim"},
    {
      "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    {
        "shatur/neovim-cmake"
    },
    { "nvim-treesitter/nvim-treesitter-context"}
}

require("user.plugins.treesitter-context")
