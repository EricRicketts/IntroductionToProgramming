def stop_loop
  loop do
    input = gets.chomp
    puts input
    break if input == 'STOP'
  end
end

def countdown(num, ary)
  if num.zero?
    ary.push(num)
  else
    ary.push(num)
    countdown(num-1, ary)
  end
end