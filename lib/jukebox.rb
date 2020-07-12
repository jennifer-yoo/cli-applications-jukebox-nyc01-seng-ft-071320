require 'pry'

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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song_info, index|
    puts "#{index+1}. #{song_info}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  songs.each_with_index do |song_title, number|
    if song_title == user_input || number + 1 == user_input
      puts "Playing #{song_title}"
    else
      puts "Invalid input, please try again"
    end
  end
end
#  songs.each_with_index do |song_name, index|
#    if user_input == song_name || user_input == index+1
#      puts "Playing #{song_name}"
#    end
#    if user_input != song_name || user_input != index+1
#      puts "Invalid input, please try again"
#    end
#  end
def exit_jukebox
  puts "Goodbye"
end

def run
end
