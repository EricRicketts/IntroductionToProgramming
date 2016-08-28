def countdown(num, ary)
  if num.zero?
    ary.push(num)
  else
    ary.push(num)
    countdown(num-1, ary)
  end
end