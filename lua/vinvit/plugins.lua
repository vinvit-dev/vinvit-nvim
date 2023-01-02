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

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer");
if not status then
	print("cant load packer")
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use("nvim-lua/plenary.nvim")
  use("rcarriga/nvim-notify")

  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")

  -- nvim&tmux tab switch plugin
  use("christoomey/vim-tmux-navigator")

  -- theme 
  use("ellisonleao/gruvbox.nvim")

  -- bufferline
  use("akinsho/bufferline.nvim")


  -- telescope
  use("nvim-telescope/telescope.nvim")

  -- todo
  use("folke/todo-comments.nvim")

  -- surround
  use("kylechui/nvim-surround")

  -- Treesitter
  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

  -- autopairs
  use("windwp/nvim-autopairs")

  -- comments
  use("terrortylor/nvim-comment")

  -- git
  use("lewis6991/gitsigns.nvim")

  -- project
  use("ahmedkhalf/project.nvim")

  -- alpha 
  use("goolord/alpha-nvim")


  if packer_bootstrap then
    packer.sync()
  end
end)
