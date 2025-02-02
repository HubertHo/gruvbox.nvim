local base = require("gruvbox.base")
local plugins = require("gruvbox.plugins.highlights")
local languages = require("gruvbox.languages")
local utils = require("gruvbox.utils")

local specs = { base, languages, plugins }
local spec = utils.merge(specs)
spec = lush.extends({spec}).with(function()
    return {
        TSKeywordOperator {base.GruvboxAquaBold}
    }
end)

local M = {}
M.load = function()
  utils.highlights(spec)
end

return M
