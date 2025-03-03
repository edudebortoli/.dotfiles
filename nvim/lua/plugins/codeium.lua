return {
  "Exafunction/codeium.vim",
  commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
  event = "BufEnter",
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
    vim.keymap.set("n", "<leader>ch", function()
      return vim.fn["codeium#Chat"]()
    end, { expr = true, silent = true })
  end,
}
