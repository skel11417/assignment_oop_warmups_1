#Warmup 1
# My Reverse
def my_reverse(str)
  output = ""
  str_length = str.length
  str_array = str.split("").to_a
  i = 1
  while i.abs <= str_length
    output += str_array[-i]
    i += 1
  end
output
end

puts my_reverse("Blah!")
puts
# Fibonacci
def fibs(num=0)
  output = [0, 1]
  if num == 1
    output = [0]
  elsif num == 2
    output
  else
    while output.length < num
      output << output[-1] + output[-2]
    end
  end
  puts output.to_s
end

fibs(3)
fibs(8)

#Warmup 2
#Benchmarker
def my_benchmark(number_of_times)
  init_time = Time.now.to_f
  #yield(number_of_times**2)
  fin_time = Time.now.to_f
  output = (fin_time - init_time) * 1000.0
  puts output
end
my_benchmark(1000) {puts "hi"}

#Warmup 3
#my each
class Array
  def my_each
    len = self.length
    i = 0
    while i < len
      yield(self.at(i))
      i += 1
    end
    self
  end
end

[1,2,5].my_each{ |item| puts item }

#my map
class Array
  def my_map
    len = self.length
    i = 0
    output = []
    while i < len
      output.push yield(self.at(i))
      i += 1
      self.at(i)
    end
    output
  end
end


result = [1,2,5].my_map do |item|
  item ** 2
end
puts result.to_s

#my select
class Array
  def my_select(&block)
    output = []
    self.my_each do |num|
      if block.call(num) == true
        output << num
      end
    end
    output
  end
end

my_proc = Proc.new{|item| item.even?}
#[1,2,5].my_select(my_proc)
[1,2,5].my_select {|item| item.even?}

## Rock, Paper, Scissors
def hand(input="")
  value = 0
    if input.downcase == "scissors"
      value = 0
    elsif input.downcase == "rock"
      value = 1
    elsif input.downcase == "paper"
      value = 2
    else
      puts "Please make a choice - rock, paper, or scissors"
    end
    value
end

def

def play
  puts hand(gets.chomp)
end
play
