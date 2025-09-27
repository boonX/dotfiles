local function find_nearest_node_modules_dir()
  local current_dir = vim.fn.expand("%:p:h") -- current buffer dir
  while current_dir ~= "/" do
    if vim.fn.isdirectory(current_dir .. "/node_modules") == 1 then
      return current_dir
    end
    current_dir = vim.fn.fnamemodify(current_dir, ":h")
  end
  return nil
end

local function get_root_dir()
  local original_cwd = vim.fn.getcwd()
  local node_modules_dir = find_nearest_node_modules_dir()
  return node_modules_dir or original_cwd
end

return {
  "nvim-neotest/neotest",
  dependencies = {
    "marilari88/neotest-vitest",
    "haydenmeade/neotest-jest",
    "rcasia/neotest-java",
  },
  opts = {
    adapters = {
      ["neotest-vitest"] = {
        cwd = get_root_dir, -- <- do not call func here - remove ()
        filter_dir = function(name, rel_path, root)
          return name ~= "node_modules"
        end,
      },
      ["neotest-java"] = {},
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
    },
  },
}
