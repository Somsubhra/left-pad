left-pad
========
Ruby gem to left pad a string with a character.

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

LeftPad.leftpad('foo', 5)       # => "  foo"
LeftPad.leftpad('foobar', 8)    # => "  foobar"
LeftPad.leftpad('foobar', 6)    # => "foobar"
LeftPad.leftpad(1, 10, 0)       # => "0000000001"
```