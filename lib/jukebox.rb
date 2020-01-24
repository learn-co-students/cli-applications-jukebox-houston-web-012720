# Add your code here
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    answer = gets.chomp
    if (1..9).to_a.include?(answer.to_i)
        puts "Playing #{songs[answer.to_i - 1]}"
    elsif songs.include?(answer)
        puts "Playing #{answer}"
    else
        puts "Invalid input, please try again"
    end
end

def list(songs)
    songs.each.with_index(1) {|song, index| puts "#{index}. #{song}"}
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    input = ""
    while input
    puts "Please enter a command:"
    input = gets.chomp
        case input
        when "help"
            help
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "exit"
            exit_jukebox
            break
        else
            help
        end    
    end
end

