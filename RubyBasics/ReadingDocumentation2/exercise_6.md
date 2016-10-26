## Exercise 6

What do each of these puts statements output?

```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }
```

The first puts throws an ```IndexError exception``` at the number is out of range of defined indices for the given array.
The second prints ```beats me``` because if the index is out of bounds then it returns a default so to avoid the
exception.  The final one returns 49 as it returns the result of the block.  In cases 2 and 3 the arguments
provided after the index are default return values just in case the index is out of range.