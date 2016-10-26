## Exercise 7

What does this code print?

```ruby
5.step(to: 10, by: 3) { |value| puts value }
```

Output is 5 followed by 8.  ```Numeric#step``` starts with 5 and returns 5 and then adds 3 to get to 8 which is
less than 10 and finally another 3 is added which takes the sum to 11 which is greater than 10, so output stops at 8.