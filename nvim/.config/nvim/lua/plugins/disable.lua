-- Function to read the contents of a file
local function read_file(path)
  local file = io.open(path, "r")
  if not file then
    return nil
  end
  local content = file:read("*a")
  file:close()
  return content
end

-- Function to check if the OS is CentOS 7
local function is_centos7()
  local os_release_content = read_file("/etc/os-release")
  if os_release_content then
    -- Check for 'CentOS Linux 7' in the os-release content
    if os_release_content:match("CentOS Linux 7") then
      return true
    end
  end
  return false
end

-- Usage
if is_centos7() then
  return {
    "Saghen/blink.cmp",
    enabled = false,
  }
else
  return {}
end
