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

		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				-- Replace with your actual path if different
				command = "/Users/ianthecake/.local/share/nvim/mason/bin/codelldb",
				args = { "--port", "${port}" },
			},
		}

		dap.configurations.c = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/main", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}

		dap.configurations.cpp = dap.configurations.c

		dap.configurations.rust = dap.configurations.cpp
	end,
}
