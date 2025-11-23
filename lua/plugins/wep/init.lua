return {
  {
    "derektata/lorem.nvim",
    config = function()
      require("lorem").opts({
        sentence_length = "mixed", -- using a default configuration
        comma_chance = 0.3, -- 30% chance to insert a comma
        max_commas = 2, -- maximum 2 commas per sentence
        debounce_ms = 200, -- default debounce time in milliseconds
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
  },
  {
    "windwp/nvim-ts-autotag",
    opts = {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false,
    },

    per_filetype = {
      ["html"] = {
        enable_close = false,
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}
