require 'launchy'

def google_search
  input_array = ARGV

  abort("Google search: missing input - re-enter the command with what you would like your research to be about right after your command and before you hit ENTER ") if ARGV.empty?
  url = input_array.join("+")

  Launchy.open("http://www.google.fr/search?q=#{url}")
end

google_search


