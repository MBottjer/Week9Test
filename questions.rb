# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select { |word| if word[0] == 'a' then word end}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  array.select { |word| if ("aeiou").include?(word[0]) then word end} 
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.delete_if {|word| word == nil}
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.delete_if {|word| word == nil || word == false}
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map {|word| word.reverse}
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice, 
def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

# discard the first 3 elements of an array, 
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array - array[0..2]
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.insert(0,element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  array.sort {|word, next_word| word[-1] <=> next_word[-1] }
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  string_index = string.length/2
  if string.length%2 == 0
    string[0,string_index]
  else 
    string[0,string_index+1]
  end
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  if number > 0 
    number = -(number)
  else
    number 
  end
end

# turn an array of numbers into two arrays of numbers, one an array of 
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  new_array = [[],[]]
  array.each { |number| if number.even? then new_array[0] << number else new_array[1] << number end}
  new_array
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  new_array = []
  array.each { |word| if word.reverse == word then new_array << word end }
  new_array.count
end

# return the shortest word in an array
def shortest_word_in_array(array)
  new_array = array.sort {|word, next_word| word.length <=> next_word.length  }
  new_array[0]
end

# return the shortest word in an array
def longest_word_in_array(array)
  new_array = array.sort {|word, next_word| word.length <=> next_word.length  }.reverse
  new_array[0]
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject {|memo, number| memo + number }
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array*2
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 33
def average_of_array(array)
  sum = array.inject {|memo, number| memo+number}
  (sum/array.length.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  array.take_while {|number| number<=5}
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  Hash[*array]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array = array.join
  array.split(//).sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  array = hash.keys + hash.values
  array.inject {|memo, number| memo + number}
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/[^[:lower:]" "]+/, "")
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  (float + 0.5).round
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  (float - 0.5).round
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  email.scan(/(?<=@)[a-zA-Z0-9-]+/).join
end

# capitalize the first letter in each word of a string, 
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  small_words = ["and", "the"]
  string = string.capitalize
  string.split.map {|word| small_words.include?(word) ? word : word.capitalize }.join(' ')
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.match(/\W/)
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a 
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.to_s.include?("...")
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  text = String.new
  File.open(file_path) { |f|  text = f.read }
  words = text.split
  words.count 
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  send('str_method')
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  bank_holidays = [Time.new(2014, 1, 1), Time.new(2014, 4, 18), Time.new(2014, 4, 21), Time.new(2014, 5, 5), Time.new(2014, 5, 26), Time.new(2014, 8, 25), Time.new(2014, 12, 25), Time.new(2014, 12, 26)]
  return true if bank_holidays.include? date
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  while birthday.friday? != true
    birthday = birthday + (3.15569e7)
  end
  birthday.year
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  words_count= {}
  file = File.open(file_path, "r")
  file.each_line do |line|
    words = line.split 
    words.each do |word|
      word = word.gsub(/[.,()'"]/,'')
      if words_count[word.length]
        words_count[word.length] += 1
      else
        words_count[word.length] = 1
      end
    end
  end  
  words_count
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)

class Integer 

def divisible_by(number)
    '1' * self =~ /^1{#{ number }}+$/
end
      (1..100).each do |i|
         puts (if i.divisible_by 15
           "FizzBuzz"
         elsif i.divisible_by 3
           "Fizz"
         elsif i.divisible_by 5
           "Buzz"
         else
           i
         end)
      end
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
  number_of_beers = 99
  while number_of_beers > 1 
  puts "#{number_of_beers} bottles of beer on the wall, #{number_of_beers} bottles of beer.
  Take one down and pass it around, #{number_of_beers - 1} bottles of beer on the wall."
  number_of_beers = number_of_beers - 1
  end
  puts "1 bottle of beer on the wall, 1 bottle of beer.
  Take one down and pass it around, 1 bottle of beer on the wall."
  puts "No more bottles of beer on the wall, no more bottles of beer. 
  Go to the store and buy some more, 99 bottles of beer on the wall."
end