local function import(file)
	local fmt = string.format
	local cmd = fmt("curl -s https://raw.githubusercontent.com/DrakeAxelrod/curlvim/main/%s.lua", file)
	local input = assert(io.popen(cmd, "r"))
	local output = assert(input:read("*a"))
	input:close()
  return assert(load(output))()
end

return import