return {
    "windwp/nvim-ts-autotag",
    ft = {
        'astro',
        'glimmer',
        'handlebars',
        'hbs',
        'html',
        'javascript',
        'javascriptreact',
        'jsx',
        'markdown',
        'php',
        'rescript',
        'svelte',
        'tsx',
        'twig',
        'typescript',
        'typescriptreact',
        'vue',
        'xml',
    },
    config = function ()
        require("nvim-ts-autotag").setup({
            opts = {
                enable_close = true,
                enable_rename = true,
                enable_close_on_slash = false,
            },
            aliases = {
                ["angular.html"] = "html",
                ["javascriptreact"] = "html"
            }
        })
    end
}
