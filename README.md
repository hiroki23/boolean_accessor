# BooleanAccessor

BooleanAccessor adds question methods to boolean attributes.

## Installation

Add this line to your application's Gemfile:

    gem 'boolean_accessor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install boolean_accessor

## Usage

```ruby
class Foo
  battr_accessor :bar, :baz   # Or, boolean_attr_accessor :bar, :baz
  battr_reader :qux           # Or, boolean_attr_reader :qux

  def initialize
    @bar = true
    @qux = false
  end
end

foo = Foo.new
foo.bar? # => true
foo.qux? # => false

foo.bar = false
foo.bar? # => false

foo.baz  # => nil
foo.baz? # => false
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
