local nnoremap = raoulduke.vim.nnoremap

local lsp = {}

local on_attach = function ()
    nnoremap('<Leader>ld', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", {buffer = true, silent = true})
    nnoremap('<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', {buffer = true, silent = true})
    nnoremap('K', "<cmd>lua require'lspsaga.hover'.render_hover_doc()<CR>", {buffer = true, silent = true})
    nnoremap('gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', {buffer = true, silent = true})

    vim.wo.signcolumn = 'yes'
end

lsp.init = function ()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local has_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
    if has_cmp_nvim_lsp then
        capabilities = require'cmp_nvim_lsp'.update_capabilities(capabilities)
    end

    require'lspconfig'.clangd.setup{
        capabilities = capabilities,
        cmd = {'clangd', '--background-index'},
        on_attach = on_attach,
    }

    require'lspconfig'.pyright.setup{
        capabilities = capabilities,
        on_attach = on_attach,
    }
end

lsp.set_up_highlights = function ()
    local pinnacle = require'wincent.pinnacle'

    vim.cmd('highlight LspDiagnosticsDefaultError ' .. pinnacle.decorate('italic,underline', 'ModeMsg'))

    vim.cmd('highlight LspDiagnosticsDefaultHint ' .. pinnacle.decorate('bold,italic,underline', 'Type'))

    vim.cmd('highlight LspDiagnosticsSignHint ' .. pinnacle.highlight({
        bg = pinnacle.extract_bg('ColorColumn'),
        fg = pinnacle.extract_fg('Type'),
    }))

    vim.cmd('highlight LspDiagnosticsSignError ' .. pinnacle.highlight({
        bg = pinnacle.extract_bg('ColorColumn'),
        fg = pinnacle.extract_fg('ErrorMsg'),
    }))

    vim.cmd('highlight LspDiagnosticsSignInformation ' .. pinnacle.highlight({
        bg = pinnacle.extract_bg('ColorColumn'),
        fg = pinnacle.extract_fg('LspDiagnosticsDefaultHint'),
    }))

    vim.cmd('highlight LspDiagnosticsSignWarning ' .. pinnacle.highlight({
        bg = pinnacle.extract_bg('ColorColumn'),
        fg = pinnacle.extract_fg('LspDiagnosticsDefaultHint'),
    }))
end

return lsp
