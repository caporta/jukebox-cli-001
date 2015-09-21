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
  puts "    help  --list available commands"
  puts "    list  --list available tracks"
  puts "    play  --play given track"
  puts "    exit  --exit application"
end

def list(tracks)
  tracks.each_with_index do |track, index|
    puts "    #{index + 1}: #{track}"
  end
end

def play(tracks)
  puts "What track would you like to play?"
  requested_track = gets.chomp
  if tracks.include?(requested_track)
    puts "Playing #{requested_track}"
  elsif tracks[requested_track.to_i] && requested_track.to_i > 0 && requested_track.to_i <= tracks.length
    puts "Playing #{tracks[requested_track.to_i - 1]}"
  else
    puts "Invalid input, please try again"
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
