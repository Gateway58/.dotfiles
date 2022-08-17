require("lsp.lspservers")
local cmp = require('cmp')
--cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
local lspkind = require'lspkind'
local source_mapping = {
    nvim_lsp = "[LSP]",
    nvim_lua = "[Lua]",
    path = "[Path]",
    luasnip = "[Snip]"
}
-- lspkind.init({
--     with_text = true,
--     -- preset = 'codicons',
-- })
cmp.setup({
    enabled = true;
    autocomplete = true;
    debug = true;
    min_length = 1;
    preselect = 'enable';
    throttle_time = 80;
    source_timeout = 200;
    incomplete_delay = 400;
    max_abbr_width = 100;
    max_kind_width = 100;
    max_menu_width = 100;
    formatting = {
        format = lspkind.cmp_format({
            --maxwidth = 50,
            before = function(entry, vim_item)
                vim_item.menu = source_mapping[entry.source.name]
                return vim_item
            end
        })
    },
    -- Enable LSP snippets
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        -- Add tab support
        -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-y>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(6),
        ['<C-f>'] = cmp.mapping.scroll_docs(-6),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<Tab>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
    -- Installed sources
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = 'nvim_lua' },
    },

})
