def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  random_card = 1 + rand(11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  h_s_choice = gets.chomp
end

def end_game(final)
  # code #end_game here
  puts "Sorry, you hit #{final}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    new_total = deal_card + card_total
    #card_total = new_total
    return new_total
  elsif user_input == "s"
    return card_total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  #initial_round
  hit_more = hit?(initial_round)
  until hit_more > 21
    display_card_total(hit_more)
  end
  final = display_card_total(hit_more)
  end_game(hit_more)
end
    
