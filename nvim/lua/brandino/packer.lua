vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   use {
	  'nvim-telescope/telescope.nvim', branch = '0.1.x',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} ,
        {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }}
  }

  use {'github/copilot.vim'}


  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use({
      'Mofiqul/dracula.nvim',
      as = 'dracula',
      config = function()
          vim.cmd('colorscheme dracula')
      end
  })
  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('dcampos/nvim-sftp-sync')
  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation


 use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use('itchyny/lightline.vim')
use('ap/vim-css-color')
use('vifm/vifm.vim')
use('troydm/zoomwintab.vim')
use('vimsence/vimsence')
use {'stevearc/vim-arduino'}



end)
