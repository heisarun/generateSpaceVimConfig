#!/home/linuxbrew/.linuxbrew/bin/ruby
#encoding: ISO-8859-1
#system("clear")
#puts "This will generate toml script for SpaceVim"

puts "[options]"
puts %q[colorscheme = "gruvbox"]
puts %q[colorscheme_bg = "dark"]
puts %q[enable_guicolors = true]
puts %q[statusline_separator = "arrow"]
puts %q[statusline_iseparator = "arrow"]
puts %q[buffer_index_type = 4]
puts %q[enable_tabline_filetype_icon = true]
puts %q[enable_statusline_mode = false]

puts "[[layers]]"
puts %q[name = 'autocomplete']
puts %q[auto_completion_return_key_behavior = "complete"]
puts %q[auto_completion_tab_key_behavior = "smart"]

puts "[[layers]]"
puts %q[name = 'shell']
puts %q[default_position = 'top']
puts %q[default_height = 30]

#puts %q[The Default Script of SpaceVim is generated]
