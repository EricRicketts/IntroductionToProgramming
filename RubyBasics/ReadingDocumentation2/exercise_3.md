## Exercise 3

Assume you have the following code:

```ruby
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect
```
What will each of the 3 puts statements print?

first of all ```#split``` takes the result of the operation and produces a new array containing the results.

for ```puts s.split.inspect``` we get ```[\"abc\", \"def\", \"ghi,jkl\", \"mno\", \"pqr,stu\", \"vwx\", \"yz\"]```
this split on the default pattern which is nil.  The default pattern behaves like a single space where leading 
whitespaces are ignored as are contiguous whitespaces.

for ```puts s.split(',').inspect``` splits on the comma pattern which would split the string on every instance of comma.  Thus
the result is ```[\"abc def ghi\", \"jkl mno pqr\", \"stu vwx yz\"]``` as you can see the array elements are grouped by what
characters came before each instance of comma.

for ```puts s.split(',', 2).inspect``` splits on the comma as before but the second argument to the method, _2_ restricts the
output to only two elements for the array.  So we get ```[\"abc def ghi\", \"jkl mno pqr,stu vwx yz\"]```.  As you can see, the
first element was the same as the previous example but the second element in the array is the remainder of the string.