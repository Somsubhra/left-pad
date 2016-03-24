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

* For version >= 1.1.0

```ruby
require 'left-pad'

'foo'.leftpad(5, 'x')   # => "xxfoo"
'foobar'.leftpad(8)     # => "  foobar"
'foobar'.leftpad(6)     # => "foobar"
'1'.leftpad(10, 0)      # => "0000000001"
```


* For version 1.0.0

```ruby
LeftPad.leftpad('foo', 5)       # => "  foo"
LeftPad.leftpad('foobar', 8)    # => "  foobar"
LeftPad.leftpad('foobar', 6)    # => "foobar"
LeftPad.leftpad(1, 10, 0)       # => "0000000001"
```
