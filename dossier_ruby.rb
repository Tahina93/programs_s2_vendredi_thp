
def creating_file
  input_array = ARGV

  abort("Error: missing input - re-enter the command and write the name of the new file you want to create right after your command and before you hit ENTER ") if ARGV.empty?
  input_array = input_array.join("")

  Dir.mkdir("#{input_array}")
  puts input_array

  Dir.chdir("#{input_array}") #permet de déplacer le terminal dans le dossier qu'on vient de créer pour y créer le reste.

return input_array
end



def creating_elements
  #création d'un FICHIER 
  gemfile = File.open("Gemfile", "a+")
    #ce qu'on veut d'écrit dans le fichier
    gemfile.puts("source 'https://rubygems.org' \n ruby '2.5.1' \n gem 'nokogiri' \n gem 'rspec' \n gem 'rubocop', '~> 0.57.2' \n gem 'pry'")


  #création d'un FICHIER 
  env = File.open(".env", "a+")
  
  #création d'un FICHIER 
  gitignore = File.open(".gitignore", "a+")
    #ce qu'on veut d'écrit dans le fichier
    gitignore.puts(".env")

  #création d'un FICHIER
  readme = File.open("README.md", "a+")
    #ce qu'on veut d'écrit dans le fichier
    readme.puts("Ceci est un dossier créé en intégralité à partir de Ruby..")

  #création d'un DOSSIER
  Dir.mkdir("lib")
end


def terminal
  system("pwd")
  system("rspec --init")
  system("git init")
  system("bundle install")
end

def perform
  creating_file
  creating_elements
  terminal
end

perform




