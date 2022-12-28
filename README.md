<img height="150" src="https://raw.githubusercontent.com/RaphaeleL/nvim/main/assets/logo.png" align="right" alt="Logo">

# NaaVim

<b>Useable for </b>
macOS · Linux · (Windows)

> **NaaVim** is my Personal `nvim` Configuration for daily usage that works completely fine on Linux and MacOS. **NaaVim** is a complete ide layer for `nvim` and easily customizable. It includes some useful plugins, but not everything the `nvim` Community provides, for example no dap. Windows should somehow working, it's not tested, maybe with some small changes. Uhh and it's LazyLoading the Plugins, so the startuptime is *Blazyingly Fast*.

## Install

> Neovim 0.8.1

You can install `nvim` using a package manager, but keep in mind that `nvim` may be updated to a newer version when you update packages. This can lead to a plugin suddenly not working anymore.

If you want to make sure `nvim` is only updated when you want, then I recommend installing from source this way:

```
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout release-0.8.1
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

Clone the Repository into `.config/` and start `nvim`. The Configuration is Installing every Plugin, Language Server and Syntax Highlighting automatically. Maybe you need to Restart `nvim`, that Treesitter is reloading everything too.

## Uninstall 

```bash 
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

## Structure

The File Structure explained.

```
- nvim
  - lua/              -- contains the configuration of NeoVim
    - *.lua           -- Neovim Settings, Keymappings, ... 
  - after/
    - plugin/*.lua    -- each Plugin has a Setup File 
    - ftplugin/*.vim  -- each Language has specific Settings 
  - init.lua          -- the start of every Configuration
```

## Plugins

Remove plugins that you have used less than 5 times in the last 3-4 weeks.

> Plugins are managed by [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

### Basic Plugins

> The Colorscheme is constantly changing but it's for sure one of them: [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim), [rose-pine/neovim](https://github.com/rose-pine/neovim) or [catppuccin/nvim](https://github.com/catppuccin/nvim)

- Undo History: [mbbill/undotree](https://github.com/mbbill/undotree)
- Better Performance: [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- Some Lua Functions: [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- Git Commands: [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- Git Changes: [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- File Explorer: [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Syntax Highlighting: [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Language Server Protocol

> Managed by [folke/lazy.nvim](https://github.com/folke/lazy.nvim)

- Lsp Config: [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Lsp Package Manager: [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- Lsp Package Manager Config: [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- Auto Completion: [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Auto Completion: [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- Auto Completion: [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- Auto Completion: [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)

# Performance 

Messured with the `time` Command for a 3000 Line Linux Kernel [File](https://raw.githubusercontent.com/torvalds/linux/master/kernel/auditsc.c):

- [NaaVim](https://github.com/RaphaeleL/nvim): `0,22s` (Lazy Loading)
- [NvChad](https://github.com/NvChad): `0,32s` (Lazy Loading)
- [ThePrimeagen's Config](https://github.com/ThePrimeagen): `0,41s`
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim): `0,52s`
- [TJ DeVries' Config](https://github.com/tjdevries): `0,71s`
- [CraftzDog's Config](https://github.com/craftzdog): `0,84s`
- [Adam Elmore's Config](https://github.com/adamelmore): `0,94s`
- [LunarVim Stable Branch](https://github.com/LunarVim): `0,94s`
- [LunarVim Rolling Branch](https://github.com/LunarVim): `0,96s`
- [Christian Chiarulli's Config](https://github.com/ChristianChiarulli): `2,60s`

> [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) compares the code with the current Git changes, so there *can* be a huge delay when opening `nvim`. Expect with NaaVim's LazyLoading :D

> for some *proofs* see `assets/time_proofs`. There are some Screenshots.

# Acknowledgments

This Configuration is inspired by:

- [NvChad](https://github.com/NvChad)
- [LunarVim](https://github.com/LunarVim)
- [ThePrimeagen](https://github.com/ThePrimeagen)
- [TJ DeVries](https://github.com/tjdevries)

## Showcase

![Demo-1](./assets/demo/Demo_1.png)
![Demo-2](./assets/demo/Demo_2.png)
![Demo-3](./assets/demo/Demo_3.png)
