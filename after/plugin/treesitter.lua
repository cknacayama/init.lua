require('nvim-treesitter.configs').setup({
    -- A list of parser names, or 'all' (the five listed parsers should always be installed)
    ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'rust', 'ken' },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for 'all')

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = '/some/path/to/store/parsers', -- Remember to run vim.opt.runtimepath:append('/some/path/to/store/parsers')!

    highlight = {
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
})

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.ken = {
    install_info = {
        url = '~/work/tree-sitter-ken', -- local path or git repo
        files = { 'src/parser.c' },     -- note that some parsers also require src/scanner.c or src/scanner.cc
    },
    filetype = 'ken',
}
parser_config.mips = {
    install_info = {
        url = '~/work/tree-sitter-mips', -- local path or git repo
        files = { 'src/parser.c' },      -- note that some parsers also require src/scanner.c or src/scanner.cc
    },
    filetype = 'mips',
}
