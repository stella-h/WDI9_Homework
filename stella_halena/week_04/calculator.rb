# simple calculator

require 'pry'

def main_menu 
  puts "[a] - addition"
  puts "[s] - subtract "
  puts "[m] - multiplication"
  puts "[d] - division"
  puts "[exp] - exponent"
  puts "[q] - quit"

end


def fetch_input(prompt)
  puts prompt
  gets.chomp      #implicit return again
end 


def fetch_number(prompt)
  print prompt
  gets.to_f       #float allows decimal input
end


def plus (a, b)
  a + b
end

def minus (a, b)
  a - b
end

def multiply (a, b)
  a * b
end

def divide (a, b)
  a / b
end

def exp (a, b)
  a ** b 
end

def sq_root (a)
  Math.sqrt(a)
end




main_menu
user_choice = fetch_input "please enter your selection:"


until user_choice == 'q'        #pick an option or terminate program 

  #code goes here (a = addition, m = multiple, )

if user_choice  == 'a'
  num1 = fetch_number "What is your first number?"
  num2 = fetch_number "What is your second number?"
  puts " the result of #{num1} plus #{num2} is equals #{ plus(num1, num2) } " 

  #puts "the result of #{num1} plus #{num2} is #{num1 + num2}"

elsif user_choice == 's'
  num1 = fetch_number "what is your first number?"
  num2 = fetch_number "what is your second number?"
  puts " the result of #{num1} minus #{num2} is equals #{ minus(num1 ,num2) } "

elsif user_choice == 'm'
  num1 = fetch_number "what is your first number?"
  num2 = fetch_number "what is your second number?"
   puts " the multiple of #{num1} and #{num2} is #{ multiply( num1, num2) } "

elsif user_choice == 'exp'
  num1 = fetch_number "what is the first number?"
  num2 = fetch_number "what is the second number?"
  puts " the number #{num1} to the power of #{num2} is #{exp(num1, num2)} "
  
elsif user_choice == 'sq_root'
  num1 = fetch_number "what is the number?"
  puts "the square root of #{num1} is #{sq_root}"
end



main_menu #until they schoose q, keep showing main menu again 
user_choice = fetch_input "please enter your selection"
end

  puts "thank you for using dreadful calculator"



