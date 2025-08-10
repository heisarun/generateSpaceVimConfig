#encoding: ISO-8859-1
system("cls")
require 'awesome_print'

puts %q[Works on top of the Default Script of SpaceVim]

repos = Array.new()


puts "----------Do you want to add plugins? Type yes and <ENTER> -------------"
plugins = gets.chomp


  if(plugins == "yes")
    while(true)
      puts "Please only type git name/repo
            as in 
            heisarun/generateSpaceVimConfig not
            https://github.com/heisarun/generateSpaceVimConfig"
      puts "Please enter no to start generating code of repos"
      puts "--Please Type GIT Repository now--Type exit to (end addition of repos)!"
      
      repo = gets.chomp
      if(repo == "exit")
        puts "exit of code"
        break
      end
      repos.push(repo)
     system("cls")
    end
  end

system("cls")
puts "-------------------------------------------------------------------------"
puts "-------------------------------------------------------------------------"
puts " ++++++++++++++++++ these repository were added +++++++++++++++++++++++++"
repos.each do | element |
    puts"-----> #{element}"
end
puts "-------------------------------------------------------------------------"

language = Array.new()
language.push("lang#toml")
language.push("shell")
language.push("autocomplete")
language.push("tools")
language.push("lang#ruby")
language.push("denite")
language.push("lsp")
language.push("lang#assembly")
language.push("foldsearch")


def generateLanguage(language)
  toml = File.open("init.toml","a+")
  
  language.each do |element|
    toml.puts ""
    toml.print "[[layers]]"
    toml.puts ""
    toml.print "name = '#{element}'"
    toml.puts ""
  end
  
  toml.close
end

def generateRepositories(repositories)
  toml = File.open("init.toml","a+")

  repositories.each do |element|
    toml.puts ""
    toml.print "[[custom_plugins]]"
    toml.puts ""
    toml.print "repo = '#{element}'"
    toml.puts ""
    toml.print %q[merged = false]
    toml.puts ""
  end
  
  toml.close
end

generateLanguage(language)
generateRepositories(repos)
