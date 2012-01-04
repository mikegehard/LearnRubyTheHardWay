def prompt
  print "> "
end

def gold_room()
  puts "This room is full of gold. How much do you take?"

  prompt; next_move = gets.chomp
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    prompt; next_move = gets.chomp()

    if next_move == "take honey"
      dead("The bear looks at you and then slaps your face off")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    end
  end
end

def cthulu_room()
  puts "Here you see the great evil Cthulu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp()

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulu_room()
  end
end

def dead(why)
  puts "#{why} Good job!"
  Process.exit(0)
end

def start()
  puts "You are in a dark room."
  puts "There is a door to your right and to your left."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp()

  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulu_room()
  else
    dead("You stumble around the room until you starve.")
  end
end

start()
