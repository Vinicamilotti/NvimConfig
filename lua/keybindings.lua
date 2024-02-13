local wk = require("which-key")

wk.register({
  p = {
    name = "file",
    f = { "Find File" },
    g= { "Open Recent File" },
    ["1"] = "which_key_ignore",                                                               -- special label to hide it in the popup
    p = { ":Telescope Projects<CR>","Find Project"},
  },

}, { prefix = "<leader>" })
