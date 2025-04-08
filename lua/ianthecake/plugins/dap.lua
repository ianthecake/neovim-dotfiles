return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap, dapui = require("dap"), require("dapui")
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

		dap.adapters.lldb = {
			type = "executable",
			command = "/usr/local/Cellar/llvm/20.1.1/bin/lldb-dap", -- Change this path if you're on macOS or using another path
			name = "lldb",
		}

		dap.configurations.cpp = {
			{
				name = "Launch C++ executable",
				type = "lldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
				runInTerminal = false,
			},
		}

		dap.configurations.rust = dap.configurations.cpp
	end,
}
