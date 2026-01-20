return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  {
    "lunarvim/colorschemes",
    lazy = true,
  },

  -- add catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
  },

  {
    "rose-pine/neovim",
    lazy = false,
    name = "rose-pine",
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
  },

  -- Configure LazyVim colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-main",
    },
  },

  -- -- install and configure neoscroll
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = "WinScrolled",
  --   config = function()
  --     require("neoscroll").setup({
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
  --       hide_cursor = true, -- Hide cursor while scrolling
  --       stop_eof = true, -- Stop at <EOF> when scrolling downwards
  --       use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --       respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --       easing_function = nil, -- Default easing function
  --       pre_hook = nil, -- Function to run before the scrolling animation starts
  --       post_hook = nil, -- Function to run after the scrolling animation ends
  --     })
  --   end,
  -- },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },

      picker = {
        win = {
          input = {
            keys = {
              ["<c-v>"] = { "edit_split", mode = { "n", "i" } },
              ["<c-o>"] = { "edit_vsplit", mode = { "n", "i" } },
              ["<c-S-t>"] = { "tab", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              -- Source reference: https://github.com/folke/snacks.nvim/discussions/1854
              ["<c-v>"] = "edit_split",
              ["<c-o>"] = "edit_vsplit",
              ["<S-T>"] = "tab",
            },
          },
        },
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
          explorer = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },

  -- -- Configure neo-tree mappings - https://github.com/nvim-neo-tree/neo-tree.nvim - https://github.com/nvim-neo-tree/neo-tree.nvim/discussions/353
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   dependencies = { "s1n7ax/nvim-window-picker" },
  --   config = function()
  --     require("neo-tree").setup({
  --       filesystem = {
  --         filtered_items = {
  --           visible = true,
  --           show_hidden_count = false,
  --           hide_gitignored = false,
  --           hide_dotfiles = true,
  --           never_show = {},
  --         },
  --         window = {
  --           mappings = {
  --             ["h"] = "toggle_node",
  --             ["l"] = "toggle_node",
  --             ["-"] = "navigate_up",
  --             ["v"] = "split_with_window_picker",
  --             ["o"] = "vsplit_with_window_picker",
  --           },
  --         },
  --       },
  --     })
  --   end,
  -- },

  -- Configure telescope mappings
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>gs", false },
    },
  },

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        -- ruff_lsp = {
        --   keys = {
        --     {
        --       "<leader>co",
        --       function()
        --         vim.lsp.buf.code_action({
        --           apply = true,
        --           context = {
        --             only = { "source.organizeImports" },
        --             diagnostics = {},
        --           },
        --         })
        --       end,
        --       desc = "Organize Imports",
        --     },
        --   },
        -- },
      },
      -- setup = {
      --   ruff_lsp = function()
      --     require("lazyvim.util").lsp.on_attach(function(client, _)
      --       if client.name == "ruff_lsp" then
      --         -- Disable hover in favor of Pyright
      --         client.server_capabilities.hoverProvider = false
      --       end
      --     end)
      --   end,
      -- },
    },
  },
  --
  -- {
  --   "nvimtools/none-ls.nvim",
  --   event = "LazyFile",
  --   dependencies = { "mason.nvim" },
  --   opts = function(_, opts)
  --     local nls = require("null-ls")
  --     opts.root_dir = opts.root_dir
  --       or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
  --     opts.sources = vim.list_extend(opts.sources or {}, {
  --       nls.builtins.formatting.fish_indent,
  --       nls.builtins.diagnostics.fish,
  --       nls.builtins.formatting.stylua,
  --       nls.builtins.formatting.shfmt,
  --       nls.builtins.diagnostics.mypy,
  --       nls.builtins.diagnostics.ruff,
  --     })
  --   end,
  -- },
  --
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "css",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "hcl",
        "terraform",
        "xml",
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "terraform-ls",
        "black",
        "mypy",
        "ruff",
        "ruff-lsp",
        "prettier",
        "llm-ls",
        "xmlformatter",
      },
    },
  },

  -- Formatters configuration
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["python"] = { "black" },
        ["javascript"] = { "prettierd" },
        ["javascriptreact"] = { "prettierd" },
        ["typescript"] = { "prettierd" },
        ["typescriptreact"] = { "prettierd" },
        ["css"] = { "prettierd" },
        ["scss"] = { "prettierd" },
        ["less"] = { "prettierd" },
        ["html"] = { "prettierd" },
        ["json"] = { "prettierd" },
        ["jsonc"] = { "prettierd" },
        ["yaml"] = { "prettierd" },
        ["markdown"] = { "prettierd" },
        ["markdown.mdx"] = { "prettierd" },
        ["xml"] = { "xmlformat" },
      },
    },
  },
  --
  -- -- disable trouble
  -- {
  --   "folke/flash.nvim",
  --   enabled = false,
  -- },
  --
  -- -- Terminal
  -- {
  --   "akinsho/toggleterm.nvim",
  --   version = "*",
  --   opts = {
  --     -- open_mapping = [[<leader>t]],
  --     autochdir = true,
  --   },
  -- },
  --
  -- -- LLM Integrations
  -- {
  --   "huggingface/llm.nvim",
  --   enabled = false,
  --   opts = {
  --     -- cf Setup - Source reference: https://github.com/huggingface/llm.nvim/issues/99 and https://github.com/huggingface/llm.nvim/issues/93
  --     backend = "ollama",
  --     model = "codellama:13b",
  --     url = "http://localhost:11434", -- llm-ls uses "/api/generate"
  --     -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
  --     request_body = {
  --       -- Modelfile options for the model you use
  --       options = {
  --         temperature = 0.2,
  --         top_p = 0.95,
  --       },
  --     },
  --     lsp = {
  --       bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
  --     },
  --     tokens_to_clear = { "<|endoftext|>" }, -- tokens to remove from the model's output
  --     tls_skip_verify_insecure = true,
  --     fim = {
  --       enabled = true,
  --       prefix = "<fim_prefix>",
  --       middle = "<fim_middle>",
  --       suffix = "<fim_suffix>",
  --     },
  --     debounce_ms = 150,
  --     accept_keymap = "<S-CR>",
  --     dismiss_keymap = "<CR>",
  --     context_window = 10000,
  --     enable_suggestions_on_startup = true,
  --     enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
  --     disable_url_path_completion = false, -- cf Backend
  --   },
  -- },
  --
  -- --
  -- {
  --   "David-Kunz/gen.nvim",
  --   opts = {
  --     model = "deepseek-coder-v2:16b", -- The default model to use.
  --     quit_map = "q", -- set keymap for close the response window
  --     retry_map = "<c-r>", -- set keymap to re-send the current prompt
  --     accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
  --     host = "localhost", -- The host running the Ollama service.
  --     port = "11434", -- The port on which the Ollama service is listening.
  --     display_mode = "split", -- The display mode. Can be "float" or "split" or "horizontal-split".
  --     show_prompt = false, -- Shows the prompt submitted to Ollama.
  --     show_model = true, -- Displays which model you are using at the beginning of your chat session.
  --     no_auto_close = true, -- Never closes the window automatically.
  --     hidden = false, -- Hide the generation window (if true, will implicitly set `prompt.replace = true`)
  --     -- init = function(options)
  --     --   pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
  --     -- end,
  --     -- Function to initialize Ollama
  --     command = function(options)
  --       local body = { model = options.model, stream = true }
  --       return "curl --silent --no-buffer -X POST http://"
  --         .. options.host
  --         .. ":"
  --         .. options.port
  --         .. "/api/chat -d $body"
  --     end,
  --     -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
  --     -- This can also be a command string.
  --     -- The executed command must return a JSON object with { response, context }
  --     -- (context property is optional).
  --     -- list_models = '<omitted lua function>', -- Retrieves a list of model names
  --     debug = false, -- Prints errors and the command which is run.
  --   },
  -- },
  --
  -- TMUX integration
  {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
