left-pad
========
Ruby gem to left pad a string.

### Install

```
gem install left-pad 
```

or add this to your Gemfile if you use bundler

```
gem 'left-pad'
```

### Usage

```ruby
require 'left-pad'

'foo'.leftpad(5, 'x')   # => "xxfoo"
'foobar'.leftpad(8)     # => "  foobar"
'foobar'.leftpad(6)     # => "foobar"
'1'.leftpad(10, 0)      # => "0000000001"
```
