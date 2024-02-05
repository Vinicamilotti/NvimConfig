return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()

      require("dap-go").setup()

      vim.keymap.set("n", "<F9>", dap.continue, {})
      vim.keymap.set("n", "<F8>", dap.step_over, {})
      vim.keymap.set("n", "<F7>", dap.step_into, {})
      vim.keymap.set("n", "<F10>", dap.step_out, {})
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, {})
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
}
