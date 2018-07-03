def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  str = gets.chomp
  
end

def end_game(point)
  # code #end_game here
  if( point > 21 )
    puts "Sorry, you hit #{point}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  return deal_card() + deal_card()
end

def hit?(point)
  # code hit? here
  res = get_user_input
  if res == "h"
    return point + deal_card()
  else
    return point
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  "calls on the #welcome method, 
  then on the #initial_round method, 
  then calls #hit? and #display_card_total methods
  -until- the card sum is greater than 21,
  then calls on the #end_game method" 
  
  welcome()
  point = initial_round()
  until point>21
    point = hit?(point)
  end
  end_game()
end
