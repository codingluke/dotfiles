-- general
lvim.log.level = "warn"
lvim.format_on_save = false

vim.opt.shell = "/bin/sh" -- use standard bash and not fish for performance improvements
vim.opt.timeoutlen = 300  -- fix fugitive and other sequence mappings
vim.o.guifont = "VictorMono Nerd Font Mono"

-- vimscripts
vim.api.nvim_set_var("fubitive_domain_pattern", "git.swisscom.com")
vim.api.nvim_command("command! -nargs=1 Browse silent exe '!xdg-open ' . \"<args>\"")
vim.api.nvim_command([[
  if &diff
    set diffopt-=internal
    set diffopt+=iwhite
  endif
]])


vim.opt.spelllang = "de"


-- vim.api.nvim_command("filetype plugin indent on")

-- Clear the search buffer when hitting return
-- vim.api.nvim_command([[
--   function! MapCR()
--     nnoremap <cr> :nohlsearch<cr>
--   endfunction
--   call MapCR()
-- ]])


-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- lvim.timeoutlen = 500
-- lvim.opt.timeoutlen = 500

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader><leader>"] = "<c-^><CR>"
lvim.keys.normal_mode["ge"] = "<cmd>:NvimTreeFocus<cr>"

lvim.keys.normal_mode["ga"] = "<Plug>(EasyAlign)"
lvim.keys.visual_mode["ga"] = "<Plug>(EasyAlign)"

lvim.keys.normal_mode["gz"] = ":ZenMode<CR>"

vim.api.nvim_set_keymap('n', '<leader>gY', '<cmd>lua require"gitlinker".get_repo_url()<cr>', {silent = true})
vim.api.nvim_set_keymap('n', 'gB', '<cmd>lua require"gitlinker".get_repo_url({action_callback = require"gitlinker.actions".open_in_browser})<cr>', {silent = true})

-- vim.keymap.set('n', 'ga', "<Plug>(EasyAlign)")
-- vim.keymap.set('x', 'ga', "<Plug>(EasyAlign)")
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["E"] = { "<cmd>:NvimTreeFocus<CR>", "Explorer focus" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- Spectre mappings
lvim.builtin.which_key.mappings["R"] = {
  name = "+Spectre",
  o = { "<cmd>lua require('spectre').open()<CR>", "Open" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search Word" }
}

-- lvim.builtin.which_key.mappings["z"] = {
--   name = "+Zen",
--   z = { "<cmd>TZAtaraxis<CR>", "Atarxis" },
--   f = { "<cmd>TZNarrow<CR>", "Narrow" },
-- }

-- lvim.builtin.which_key.vmappings["z"] = {
--   name = "+Zen",
--   f = { "<cmd>'<,'>TZNarrow<CR>", "Narrow" },
-- }

-- fugitive mappings
lvim.builtin.which_key.mappings["gs"] = { "<cmd>Git<CR>", "Status" }
lvim.builtin.which_key.vmappings["l"] = {
  name = "+LSP",
  a = {
    name = "+Code Actions",
    m = { "<cmd>lua require('jdtls').extract_method(true)<CR>", "Extract Method" },
    t = { "<cmd>lua require('jdtls').test_nearest_method()<CR>", "test" }
  }
}

-- lvim.keys.visual_mode["<leader>lam"] = "<Cmd>lua require('jdtls').extract_method(true)<CR>"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = false
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = false
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
-- lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.respect_buf_cwd = 0
lvim.builtin.nvimtree.setup.view.preserve_window_proportions = true
-- lvim.builtin.nvimtree.setup.view.auto_resize = true
-- lvim.builtin.nvimtree.setup.view.width = 30

lvim.builtin.dap.active = true
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git" } -- root is always on .git root
lvim.builtin.lualine.style = "lvim" -- or "none"

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
--   { exe = "black", filetypes = { "python" } },
--   { exe = "isort", filetypes = { "python" } },
  {
    exe = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    args = { "--print-with", "80" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact", "javascript", "css" },
  },
}

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { exe = "flake8", filetypes = { "python" } },
--   {
--     exe = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--severity", "warning" },
--   },
--   {
--     exe = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "TroubleToggle",
  -- },
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },
  -- {
  --   "windwp/nvim-spectre",
  --   event = "BufRead",
  --   config = function()
  --     require("spectre").setup()
  --   end,
  -- },
  { 'alexghergh/nvim-tmux-navigation', config = function()
          require'nvim-tmux-navigation'.setup {
              disable_when_zoomed = true, -- defaults to false
              keybindings = {
                  left = "<C-h>",
                  down = "<C-j>",
                  up = "<C-k>",
                  right = "<C-l>",
              }
          }
      end
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
      styles = {
          comments = { "italic" },
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        }
      }
    end
  },
  { "mfussenegger/nvim-jdtls" },
  { "mhinz/vim-startify" },
  { "tpope/vim-vinegar" },
  { "nelstrom/vim-visual-star-search" },
  {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = {'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html'}
  },
  { "andreshazard/vim-freemarker" },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = {"fugitive"}
  },
  { 'tommcdo/vim-fubitive' },
  { 'tpope/vim-rhubarb' },
  { "chr4/nginx.vim" },
  { "junegunn/gv.vim" },
  { "mg979/vim-visual-multi" },
  { "ckipp01/nvim-jenkinsfile-linter", requires = { "nvim-lua/plenary.nvim" }, ft= {"Jenkinsfile"} },
  { "junegunn/vim-easy-align" },
  { "khaveesh/vim-fish-syntax" },
  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            rgb_fn = true, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
    end,
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup {
        enabled = true,
        filetypes = {
          'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
          'xml',
          'php',
          'markdown',
          'glimmer','handlebars','hbs'
        }
      }
    end,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 0.95,
          width = 0.8,
          height = 0.95,
        },
        plugins = {
          tmux = { enabled = false },
          kitty = {
            enabled = true,
            font = "+7", -- font size increment
          },
        }
      }
    end
  },
  {
      'ruifm/gitlinker.nvim',
      requires = 'nvim-lua/plenary.nvim',
      config = function()
        require("gitlinker").setup {
          callbacks = {
            ["git.swisscom.com"] = function(url_data)
              url_data.host = "git.swisscom.com"
             url_data.repo = "projects/" .. url_data.repo
              return
                  require"gitlinker.hosts".get_bitbucket_type_url(url_data)
            end
          },
        }
      end
  }
}

-- Autocommands (https://www.lunarvim.org/configuration/05-autocommands.html)
lvim.autocommands = {
  {
    "BufRead,BufNewFile",
    {
      pattern = { "Jenkinsfile*" },
      command = "set filetype=groovy",
    }
  },
  {
    "BufRead,BufNewFile",
    {
      pattern = { ".envrc" },
      command = "set filetype=sh",
    }
  }
}


---

vim.g.catppuccin_flavour = "mocha"
lvim.colorscheme = "catppuccin"
