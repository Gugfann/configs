  -- Centers cursor when moving 1/2 page down and up
  lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
  lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"

  -- Yank into system clipboard
  lvim.keys.visual_mode["<leader>y"] = '"+y'
  lvim.keys.normal_mode["<leader>yy"] = '"+yy'
  lvim.keys.normal_mode["<leader>yiw"] = '"+yiw'
  lvim.keys.normal_mode["<leader>yiW"] = '"+yiW'
  lvim.keys.normal_mode['<leader>yi"'] = '"+yi"'
  lvim.keys.normal_mode['<leader>ya"'] = '"+ya"'
  lvim.keys.normal_mode['<leader>yi('] = '"+yi('
  lvim.keys.normal_mode['<leader>yi)'] = '"+yi)'
  lvim.keys.normal_mode['<leader>yi}'] = '"+yi}'
  lvim.keys.normal_mode['<leader>yi{'] = '"+yi{'
  lvim.keys.normal_mode['<leader>yip'] = '"+yip'

  -- Run script to merge compile commands from all ROS packages
  lvim.keys.normal_mode["<leader>mc"] = ':!/workspace/src/robot_master/AI-Link/build_dependencies/merge_compile_commands.sh<CR><CR>'
  lvim.keys.normal_mode["<leader>mt"] = ':ToggleTerm<CR>'
