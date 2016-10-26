## Exercise 4

Assume you have the following code:

```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```

What will each of the 4 puts statements print?

```Date.new``` prints ```-4712-01-01``` because year is the first argument to the method, month is the second argument, and day of the month is the
third argument.  Note month and day of the month are numbers.  Both month and month day default to 1 if no arguments are passed in and year defaults to
-4712 if nothing is passed in for the year.

```Date.new(2016)``` prints ```2016-01-01``` because the year is passed in and because the month and month day both default to 1.

```Date.new(2016, 5)``` prints ```2016-05-01``` because both the year and month are passed in and the month day defaults to 1.

```Date.new(2016, 5, 13)``` prints ```2016-05-13``` because all three parameters are passed in: year, month, and month day. 

