return {
  'filipdutescu/renamer.nvim',
  branch = 'master',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local rename = require("renamer")
    rename.setup()
    vim.keymap.set("n", "<leader>R", rename.rename)
  end
}
