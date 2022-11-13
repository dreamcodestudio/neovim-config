require("nvim-treesitter.configs").setup {
    ensure_installed = {"lua", "c_sharp"},
    sync_install = false,
    highlight = {
      enable = true,
    },
}
