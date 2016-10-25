## Exercise 10
### Locate the ruby documentation for methods File::path and File#path. How are they different?

::path returns the string representation of the path:
```ruby
File.path("/dev/null") #=> "/dev/null"
```
where as #path returns the pathname used to create file as a string.
```ruby
File.new("testfile").path #=> "testfile"
```