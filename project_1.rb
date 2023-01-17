# write a program that prints the squares of all numbers from 1 to
# a number n entered by the user. a sample run can be as the following:
# Enter a number : 3
# 1  1
# 2  4
# 3  9
# Do another (Y/N): y
# Enter a number : 2
# 1  1
# 2  4
# Do another (Y/N): n


puts "Enter a number : "
number = gets.chomp().to_i
$answer = "y"
while $answer == 'y'
  (1..number).each do |i|
    puts "#{i}  #{i * i}"
  end
  puts "Do another (Y/N): "
  $answer = gets.chomp()
  if $answer == 'y'
    puts "Enter a number : "
    number = gets.chomp().to_i
    next
  elsif $answer == 'n'
    break
  else
    puts "wrong answer."
  end
end