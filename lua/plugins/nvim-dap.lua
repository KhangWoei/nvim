-- nvim-dap.lua
-- Debug Adapter Protocol client

local nvim_dap = {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap-python",
        "igorlfs/nvim-dap-view",
    }
}

function nvim_dap.config()
    local dap_python = require('dap-python')

    local hatch_python = vim.fn.getcwd() .. '/.venv/bin/python'
    if vim.fn.filereadable(hatch_python) == 1 then
        dap_python.setup(hatch_python)
    else
        dap_python.setup('python3')
    end

    local dap = require('dap')
    dap.adapters.coreclr = {
        type = 'executable',
        command = 'netcoredbg',
        args = { '--interpreter=vscode' }
    }

    local dap_view = require('dap-view')
    dap_view.setup({
        auto_toggle = true
    })
end

function nvim_dap.keys()
    local dap = require('dap')

    return {
        { "<F5>",       dap.continue,                                                              desc = "DAP: Continue" },
        { "<F6>",       dap.step_over,                                                             desc = "DAP: Step Over" },
        { "<F7>",       dap.step_into,                                                             desc = "DAP: Step Into" },
        { "<F8>",       dap.step_out,                                                              desc = "DAP: Step Out" },
        { "<leader>b",  dap.toggle_breakpoint,                                                     desc = "Toggle [B]reakpoint" },
        { "<leader>bc", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Togle [B]reakpoint, [C]onditional" },
    }
end

return nvim_dap
