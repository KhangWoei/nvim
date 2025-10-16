-- nvim-dap.lua
-- Debug Adapter Protocol client

local nvim_dap = {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap-python",
    }
}

function nvim_dap.config()
    local dap_python = require('dap-python')

    dap_python.setup('python')
end

function nvim_dap.keys()
    local dap = require('dap')

    return {
        { "<F5>",       dap.continue,                                                              desc = "DAP: Continue" },
        { "<F10>",      dap.step_over,                                                             desc = "DAP: Step Over" },
        { "<F11>",      dap.step_into,                                                             desc = "DAP: Step Into" },
        { "<F12>",      dap.step_out,                                                              desc = "DAP: Step Out" },
        { "<leader>b",  dap.toggle_breakpoint,                                                     desc = "Toggle [B]reakpoint" },
        { "<leader>bc", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Togle [B]reakpoint, [C]onditional" },
    }
end

return nvim_dap
