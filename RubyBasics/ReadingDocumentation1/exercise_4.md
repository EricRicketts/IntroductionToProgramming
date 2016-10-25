## Exercise 4
### In the previous exercise, you learned that the while loop returns nil unless break is used.
### Locate the documentation for break, and determine what value break sets the return value to for the while loop.

**break accepts a value that supplies the result of the expression it is "breaking" out of, otherwise it is nil:**

```ruby
result = [1, 2, 3].each do |value|
  break value * 2 if value.even?
end
p result # prints 4
```

