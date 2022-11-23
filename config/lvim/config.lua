-- general
lvim.log.level = "warn"
lvim.format_on_save = false

vim.opt.shell = "/bin/sh" -- use standard bash and not fish for performance improvements
vim.o.timeoutlen = 200 -- fix fugitive and other sequence mappings
vim.o.cmdheight = 0
vim.o.guifont = "FiraCode Nerd Font Mono"
vim.o.inccommand = "split"

vim.opt.spell = true
vim.opt.spelllang = "de,en"

vim.g.wildfire_objects = { "iC", "iB", "il", "aCm", "i'", 'i"', "i`", "i)", "i]", "i}", "ip", "it" }
vim.g.neovide_input_macos_alt_is_meta = true

-- vimscripts
vim.api.nvim_set_var("fubitive_domain_pattern", "git.swisscom.com")
vim.api.nvim_command("command! -nargs=1 Browse silent exe '!xdg-open ' . \"<args>\"")
vim.api.nvim_command([[
  if &diff
    set diffopt-=internal
    set diffopt+=iwhite
  endif
]])

-- keymappings [view all the defaults by pressing <leader>Lk]
-- lvim.leader = ","

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader><leader>"] = "<c-^><CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["gz"] = ":ZenMode<CR>"
lvim.keys.normal_mode["<bar>"] = "vip :EasyAlign*<Bar><CR>"
-- lvim.keys.normal_mode["ge"] = "<cmd>:NvimTreeFocus<cr>"
lvim.keys.normal_mode["ge"] = '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>'
lvim.keys.visual_mode["ge"] = '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>'

vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', { silent = true, desc = "Easy Align" })
vim.api.nvim_set_keymap('v', 'ga', '<Plug>(EasyAlign)', { silent = true, desc = "Easy Align" })

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
lvim.builtin.telescope.defaults.path_display = { "absolute" }

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["o"] = {
  name = "+Obsidian",
  o = { "<cmd>ObsidianOpen<CR>", "Open" },
  c = { "<cmd>ObsidianCheck<CR>", "Check" },
  n = { "<cmd>ObsidianNew<CR>", "New" },
  s = { "<cmd>ObsidianSearch<CR>", "Search" },
  d = { "<cmd>ObsidianToday<CR>", "Today" },
  b = { "<cmd>ObsidianBacklinks<CR>", "Today" },
  L = { "<cmd>ObsidianLinkNew<CR>", "Link New" },
}
lvim.builtin.which_key.vmappings["o"] = {
  name = "+Obsidian",
  l = { "<cmd>ObsidianLink<CR>", "Link Existing alias" },
  L = { "<cmd>ObsidianLinkNew<CR>", "Link New" },
}
lvim.builtin.which_key.mappings.s["o"] = {
  "<cmd>ObsidianSearch<CR>", "Obsidian"
}

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

lvim.builtin.which_key.mappings.g["g"] = {
  ":Git<CR>", "Fugitive Status"
}

-- lvim.builtin.which_key.vmappings["z"] = {
--   name = "+Zen",
--   f = { "<cmd>'<,'>TZNarrow<CR>", "Narrow" },
-- }

-- fugitive mappings
-- lvim.builtin.which_key.mappings["gs"] = { "<cmd>Git<CR>", "Status" }
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
--lvim.builtin.notify.active = false
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
-- lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.respect_buf_cwd = 0
lvim.builtin.nvimtree.setup.view.preserve_window_proportions = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
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

-- require("mason-lspconfig").setup({
--   ensure_installed = {
--     "bash-language-server",
--     "css-lsp",
--     "dockerfile-language-server",
--     "groovy-language-server",
--     "html-lsp",
--     "json-lsp",
--     "lemminx",
--     "lua-language-server",
--     "tailwindcss-language-server",
--     "typescript-language-server",
--     "vim-language-server",
--     "yaml-language-server",
--     "jdtls@v1.12.0"
--   }
-- })


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
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   --   { exe = "black", filetypes = { "python" } },
--   --   { exe = "isort", filetypes = { "python" } },
--   {
--     exe = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     args = { "--print-with", "80" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact", "javascript", "css" },
--   },
-- }

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
    "ggandor/leap.nvim",
    event = "BufRead",
    config = function()
      require('leap').add_default_mappings()
    end
  },
  { 'alexghergh/nvim-tmux-navigation', config = function()
    require 'nvim-tmux-navigation'.setup {
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
  { "mfussenegger/nvim-jdtls", commit = "3a148dac526396678f141a033270961d0d9ccb88" },
  { "mhinz/vim-startify" },
  { "tpope/vim-vinegar" },
  { "nelstrom/vim-visual-star-search" },
  {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' }
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
    ft = { "fugitive" }
  },
  { 'tommcdo/vim-fubitive' },
  { 'tpope/vim-rhubarb' },
  { "chr4/nginx.vim" },
  { "junegunn/gv.vim" },
  { "mg979/vim-visual-multi" },
  { "ckipp01/nvim-jenkinsfile-linter", requires = { "nvim-lua/plenary.nvim" }, ft = { "Jenkinsfile" } },
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
          'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact',
          'svelte', 'vue', 'tsx', 'jsx', 'rescript', 'xml', 'php', 'markdown',
          'glimmer', 'handlebars', 'hbs'
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
  { "tpope/vim-surround" },
  { "tpope/vim-repeat" },
  {
    'ruifm/gitlinker.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require("gitlinker").setup {
        callbacks = {
          ["git.swisscom.com"] = function(url_data)
            local url = {}
            url_data.host = "git.swisscom.com/projects/"
            url_data.repo = url_data.repo:gsub("/", "/repos/") .. "/browse"
            table.insert(url, "https://" .. url_data.host .. url_data.repo)
            if url_data.file then table.insert(url, "/" .. url_data.file) end
            if url_data.rev then table.insert(url, "?until=" .. url_data.rev) end
            if url_data.lstart then table.insert(url, "#" .. url_data.lstart) end
            if url_data.lend then table.insert(url, "-" .. url_data.lend) end
            return table.concat(url)
          end
        },
      }
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    config = function()
      require("nvim-treesitter.configs").setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["il"] = "@loop.inner",
              ["al"] = "@loop.outer",
              ["aCm"] = "@comment.outer",
              ["iCm"] = "@comment.inner",
              ["iB"] = "@block.inner",
              ["aB"] = "@block.outer",
              ["iC"] = "@class.inner",
              ["aC"] = "@class.outer",
              ["p"] = "@parameter.inner",
            },
          },
        }
      }
    end
  },
  { "gcmt/wildfire.vim" },
  { "MunifTanjim/prettier.nvim",
    config = function()
      require("prettier").setup {
        bin = 'prettier', -- or `'prettierd'` (v0.22+)
        filetypes = {
          "css",
          "graphql",
          "html",
          "javascript",
          "javascriptreact",
          "json",
          "less",
          "markdown",
          "scss",
          "typescript",
          "typescriptreact",
          "yaml",
        },
      }
    end
  },
  { "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup {
        dir = "~/Projects/obsidian",
        completion = {
          nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
        },
        daily_notes = {
          folder = "dailies",
        }
      }
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "markdown", "markdown_inline" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "markdown" },
        },
      }
    end
  },
  { 'tpope/vim-rsi' },
  { 'ixru/nvim-markdown' },
  {
    "ggandor/flit.nvim",
    config = function()
      require('flit').setup {}
    end
  },
  {
    "folke/noice.nvim",
    event = "VimEnter",
    config = function()
      require("noice").setup()
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
    }
  },
  { 'rebelot/kanagawa.nvim' },
  { 'Shadorain/shadotheme' },
  { 'rose-pine/neovim' }
}

-- Autocommands (https://www.lunarvim.org/configuration/05-autocommands.html)

lvim.autocommands = {
  { "BufRead,BufNewFile", { pattern = { "*.md" }, command = "let b:surround_{char2nr('*')} = '**\r**'", }, },
  { "BufRead,BufNewFile", { pattern = { "Jenkinsfile*" }, command = "set filetype=groovy", } },
  { "BufRead,BufNewFile", { pattern = { ".envrc" }, command = "set filetype=sh", } }
}


--- Theme
-- vim.g.catppuccin_flavour = "mocha"
lvim.colorscheme = "rose-pine"
