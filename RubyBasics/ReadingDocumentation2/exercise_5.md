## Exercise 5

The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```

How would you search this Array to find the first element whose value exceeds 8?

```ruby
a.bsearch {|x| x > 8}
```

The code above will return a single number, which will be 11.  According to the documentation, this is "find minimum mode", which
will return the first number meeting the boolean criteria.