def welcome
  message = "Welcome to the Blackjack Table"
  puts message
end

def deal_card
  card = Random.rand(1..11)
  return card
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
  total = first + second
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  turn = get_user_input
  if turn == "h"
    total += deal_card
  elsif turn != "s" && turn != "h"
    invalid_command
    prompt_user
    turn = get_user_input
  else
    total
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
