---@diagnostic disable: undefined-global
local function import(file)
	local fmt = string.format
	return assert(load(vim.fn.system({
		"curl",
		"-s",
		fmt("https://raw.githubusercontent.com/DrakeAxelrod/curlvim/main/%s.lua", file),
	})))()
end

import("packer")
