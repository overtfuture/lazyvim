return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
    },
    keys = function()
      local dap = require("dap")
      local dapui = require("dapui")

      return {
        { "<F5>", function() dap.continue() end, desc = "Debug: Continue" },
        { "<F10>", function() dap.step_over() end, desc = "Debug: Step Over" },
        { "<F11>", function() dap.step_into() end, desc = "Debug: Step Into" },
        { "<F12>", function() dap.step_out() end, desc = "Debug: Step Out" },
        { "<leader>db", function() dap.toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
        {
          "<leader>dB",
          function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) end,
          desc = "Debug: Conditional Breakpoint",
        },
        { "<leader>dr", function() dap.repl.open() end, desc = "Debug: REPL" },
        { "<leader>dl", function() dap.run_last() end, desc = "Debug: Run Last" },
        { "<leader>du", function() dapui.toggle() end, desc = "Debug: Toggle UI" },
        {
          "<leader>d?",
          function()
            require("which-key").show({ keys = "<leader>d" })
          end,
          desc = "Debug: Show Keymaps",
        },
        { "<leader>dt", function() require("dap-go").debug_test() end, desc = "Debug: Go Test" },
        { "<leader>dT", function() require("dap-go").debug_last_test() end, desc = "Debug: Last Go Test" },
        {
          "<leader>dm",
          function()
            dap.run({
              type = "go",
              name = "Debug Package (Current File Dir)",
              request = "launch",
              program = "${fileDirname}",
              outputMode = "remote",
            })
          end,
          desc = "Debug: Go Main",
        },
      }
    end,
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      require("nvim-dap-virtual-text").setup()
      vim.api.nvim_create_user_command("DebugHelp", function()
        require("which-key").show({ keys = "<leader>d" })
      end, { desc = "Show debug keymaps" })
      vim.api.nvim_create_user_command("DebugGoMain", function()
        dap.run({
          type = "go",
          name = "Debug Package (Current File Dir)",
          request = "launch",
          program = "${fileDirname}",
          outputMode = "remote",
        })
      end, { desc = "Debug Go package for current file" })

      -- Auto-open/close UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "leoluz/nvim-dap-go",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-go").setup()
    end,
  },
}
