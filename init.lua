---@diagnostic disable: undefined-global
local M = {}
local import = assert(load(vim.fn.system({
	"curl",
	"-s",
	"https://raw.githubusercontent.com/DrakeAxelrod/curlvim/main/import.lua",
})))()

M.hello = import("helloworld")

return M