vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
		--Package Manager--
use "wbthomason/packer.nvim"
		--LSP, DAP, linters, formatters--
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
		--Autocomplete--
use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "onsails/lspkind-nvim",
}
		--Syntax highlighting--
use {
    "nvim-treesitter/nvim-treesitter"
}
                --Color scheme--
use "morhetz/gruvbox"
		--File Explorer--
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
                --Finder--
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
}
		--Statusline--
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
		--Bufferline--
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'}
end)
