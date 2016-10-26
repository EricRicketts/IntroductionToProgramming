## Exercise 2

Assume you have this array ```a = %(a b c d e)``` How would you use ```Array#insert``` to insert the 
numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

one way is ```a.insert(3, *[5, 6, 7])``` another way is ```a.insert(-3, *[5, 6, 7])``, the _*_ expands the array before inserting the numbers.