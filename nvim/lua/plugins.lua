-- Installs packer automatically
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

    -- Plugin manager
    use 'wbthomason/packer.nvim'                                                        -- DO NOT REMOVE

    -- Theme
    use 'ellisonleao/gruvbox.nvim'			                	        -- Color theme
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "folke/tokyonight.nvim", as = "tokyonight" }

    -- UI
    use 'nvim-tree/nvim-tree.lua'				                        -- File explorer
    use 'nvim-tree/nvim-web-devicons'		        		                -- Better icons for nvim-tree
    use 'nvim-lualine/lualine.nvim'			        	                -- Status line
    use 'lukas-reineke/indent-blankline.nvim'                                           -- Indent lines
    use {                                                                               -- Startup screen
        'startup-nvim/startup.nvim',                                                  
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require('plugin_config.startup')
        end
    }

    -- Utilities
    use 'tpope/vim-fugitive'                                                            -- Git integration
    use 'nvim-treesitter/nvim-treesitter'                                               -- Hightlighting
    use 'cohama/lexima.vim'                                                             -- Parenthesis
    use 'ap/vim-css-color'                                                              -- Hex & rgb color highlighting
    use {                                                                               -- File finder
        'nvim-telescope/telescope.nvim', tag = '0.1.4',		                
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use {                                                                               -- File browser for telescope
        'nvim-telescope/telescope-file-browser.nvim',
        requires = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' }
    }

    -- Coding and preview
    use {'neoclide/coc.nvim', branch = 'release'}                                       -- Code completion
    use 'honza/vim-snippets'                                                            -- Snippet collection
    use 'SirVer/ultisnips'                                                              -- Snippets for markdown
    use 'sakhnik/nvim-gdb'                                                              -- GDB frontend
    use 'stevearc/vim-arduino'                                                          -- Arduino-cli commands
    use 'udalov/kotlin-vim'                                                             -- Kotlin
    use 'lervag/vimtex'                                                                 -- Latex preview
    use {                                                                               -- Markdown preview
        'iamcco/markdown-preview.nvim', 
        run = 'cd app && npm install', 
        setup = function() 
            vim.g.mkdp_filetypes = { 'markdown' } 
        end, 
        ft = { 'markdown' }, 
    }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

