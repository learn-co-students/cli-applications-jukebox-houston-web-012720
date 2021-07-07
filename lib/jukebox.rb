# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songlist)
  songlist.each_with_index{ |song, index|
    puts "#{index +1 }. #{song}"
  }
end

def play(songlist)
  puts "Please enter a song name or number:"
  input = gets.strip

  if songlist[input.to_i - 1] && input.to_i > 0
    puts "Playing #{songlist[input.to_i - 1]}"
  else
    
    song = songlist.find{ |song| song == input}
      if !(song == nil)
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
      end
    
    
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songlist)
  puts "Please enter a command:"
  input = nil
  while !(input == "exit") do
    input = gets.strip
    if input == "help" then
      help
    elsif input == "list" then
      list(songlist)
    elsif input == "play" then
      play(songlist)
    end
  end
  exit_jukebox
end
def test
  songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
  ]
  run(songs)
end



