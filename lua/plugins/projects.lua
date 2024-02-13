return {
  "ahmedkhalf/project.nvim",
  config = function()
    local telescope = require('telescope')
    require("project_nvim").setup {
      detection_methods = { "lsp", "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".csproj" },
      scope_chdir = 'global',

    }

    telescope.load_extension('projects')
    vim.keymap.set("n", "<leader>pp", ":Telescope projects<CR>")
  end
}
