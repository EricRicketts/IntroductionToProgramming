## Exercise 9
### Use the ruby documentation for the String class to determine which method can be used to right justify a String object.

The _rjust_ instance method is used to right justify a Ruby String.  _rjust_ takes two parameters, the first being an integer which represents the amount of padding and the second
a padding string which defaults to a space character if no padding string is explicitly specified.  The amount of padding is the padding number minus the length of the string.  If
the string is equal to or larger than the padding number the string itself is returned.