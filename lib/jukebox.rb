require 'pry'

def say_hello(name)
  "Hi #{name}!"
end

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"

end

def list(songs)
  songs.each_with_index do |val, index|
    puts "#{index+1}. #{val}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  #when you do input.to_i it does 0
  if input.to_i.to_s == input && input.to_i <= songs.length + 1
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include? (input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs) 
  command = 0
  while !(command == "exit") do
    #mother effin pemdas. it was doing the opposite of command
    puts "Please enter a command:"
    command  = gets.strip
    if command == "help"
      help()
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox()
    else
      puts "Invalid command"
    end
  end
end

