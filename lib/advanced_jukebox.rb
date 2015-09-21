require 'pry'

def help
  puts "    help  --list available commands"
  puts "    list  --list available tracks"
  puts "    play  --play given track"
  puts "    exit  --exit application"
end



def list(tracks)
  counter = 0
  tracks.each do |key, value|
    counter += 1
    puts "    #{counter}: #{key}"
  end
end


def play(tracks)
  puts "What track would you like to play?"
  requested_track = gets.chomp
  if tracks.keys.include?(requested_track)
    system "open #{tracks[requested_track]}"
  else
    puts "Your choice is invalid. Please use the 'list' command to view available tracks."
  end
end

def exit_jukebox
  puts "You want to exit?!? Goodbye then!"
end

def run(tracks)
  user_input = ""
  until user_input == "exit"
    puts "Please enter a command:"
    user_input = gets.chomp.downcase.strip
    if user_input == "help"
      help
    elsif user_input == "exit"
      exit_jukebox
    elsif user_input == "list"
      list(tracks)
    elsif user_input == "play"
      play(tracks)
    else
      "Invalid Command"
    end
  end
end
