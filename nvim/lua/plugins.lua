vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
  function()
    --Plugin Manager
    use {"wbthomason/packer.nvim", opt = true}
    --Colorscheme
    use "sainnhe/everforest"
    use "nvim-treesitter/nvim-treesitter"
    --Autocomplete
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-compe"
    use "hrsh7th/vim-vsnip"
    use "windwp/nvim-autopairs"
    use "norcalli/nvim-colorizer.lua"
    use "mattn/emmet-vim"
    use "mhartington/formatter.nvim"
    --File Tree
    use {
      "kyazdani42/nvim-tree.lua",
      requries = "kyazsani42/nvim-web-devicons"
    }

    --Telescope
    use {
      "nvim-telescope/telescope.nvim",
      requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
    }
    --Statusline
    use {
      "glepnir/galaxyline.nvim",
      branch = "main",
      config = function()
        require "my_statusline"
      end,
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
    use {"akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons"}
    --Other
    use "tpope/vim-fugitive"
    use "b3nj5m1n/kommentary"
    use "kyazdani42/nvim-web-devicons"
    use "ryanoasis/vim-devicons"
    use "lukas-reineke/indent-blankline.nvim"
    use "airblade/vim-gitgutter"
  end
)
