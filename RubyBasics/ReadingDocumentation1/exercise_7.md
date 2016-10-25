## Exercise 7
### Default arguments in the Middle

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

Use the ruby documentation to determine what this code will print.

The output will be [4, 5, 3, 6] because _a_ will get the first number and _d_ will get the last number which is 6.  Now 5 remains.  Ruby takes the default arguments in order,
so _b_ will be assigned with the number 5 while _c_ will get its default of 3.