## Exercise 10

Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```

Find the documentation for YAML::load_file.

```ruby
require 'psych'
Psych.load_file('calculator_messages.yml')
```

Psych Module documentation