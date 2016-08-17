# Recordkeeper

Recordkeeper is a ruby gem that works like Python's Counter method.  Built as a monkey patch to the Array class, recordkeeper takes an array and returns a hash where the keys are the array's values, and the values are the instances in which the values appear in the original array.

So for example:

[1, 1, 1, 4, 2, 5].recordkeeper returns {1=>3, 4 => 1, 2 => 1, 5=>1}
["apple", "apple", "banana", "cartoon"].recordkeeper returns {"apple"=>2, "banana"=>1, "cartoon"=>1}

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'recordkeeper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install recordkeeper

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yisusans/recordkeeper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

Make a pull request if you want to add more tests!  Or if you've found unexpected bugs.  OR if you want to make my code faster :).


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
