let s:c = has("nvim") == 1 ? luaeval('require("catppuccin.palettes").get_palette()') : luaeval('vim.dict(require("catppuccin.palettes").get_palette())')

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:c.mantle, s:c.blue ], [ s:c.blue, s:c.surface1 ] ]
let s:p.normal.middle = [ [ s:c.blue, s:c.surface1 ] ]
let s:p.normal.right = [ [ s:c.mantle, s:c.blue ], [ s:c.blue, s:c.surface2 ] ]
let s:p.insert.left = [ [ s:c.mantle, s:c.teal ], [ s:c.blue, s:c.surface1 ] ]
let s:p.visual.left = [ [ s:c.mantle, s:c.mauve ], [ s:c.blue, s:c.surface1 ] ]
let s:p.replace.left = [ [ s:c.mantle, s:c.red ], [ s:c.blue, s:c.surface1 ] ]

let s:p.inactive.left =  [ [ s:c.blue, s:c.surface1 ], [ s:c.blue, s:c.surface1 ] ]
let s:p.inactive.middle = [ [ s:c.blue, s:c.surface1 ] ]
let s:p.inactive.right = [ [ s:c.mantle, s:c.overlay1 ], [ s:c.blue, s:c.surface2 ] ]

let s:p.tabline.left = [ [ s:c.blue, s:c.surface1 ], [ s:c.overlay0, s:c.surface1 ] ]
let s:p.tabline.tabsel = [ [ s:c.mantle, s:c.blue ], [ s:c.blue, s:c.surface1] ]
let s:p.tabline.middle = [ [ s:c.overlay1, s:c.surface1 ] ]
let s:p.tabline.right = copy(s:p.inactive.right)
let s:p.normal.error = [ [ s:c.mantle, s:c.red ] ]
let s:p.normal.warning = [ [ s:c.mantle, s:c.yellow ] ]

let g:lightline#colorscheme#catppuccin#palette = lightline#colorscheme#fill(s:p)
