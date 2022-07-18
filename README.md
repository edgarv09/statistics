# Statistics

Overview
--------

This gem adds `Data Capture` object allowing the user to add numbers and returns an object for querying statistics about the inputs. Specifically, the returned object supports
querying how many numbers in the collection are like

* less than a value.
* greater than a value.
* between a range.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'statistics', git: "https://github.com/edgarv09/statistics.git", branch: :main
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install  --source https://github.com/edgarv09/statistics.git statistics

## Usage

Require `Statistics` module and the class `DataCapture` would be available to store the numbers and being able to querying the statistics about the input

```ruby
require 'statistics'

capture = DataCapture.new
capture.add 3
#=> [3]
capture.add 9
#=> [3, 9]
capture.add 3
#=> [3, 9, 3]
capture.add 4
#=> [3, 9, 3, 4]
capture.add 6
#=> [3, 9, 3, 4, 6]
stats = capture.build_stats()
stats.less(4)
#=> 2
stats.between(3, 6)
#=> 4
stats.greater(4)
#=> 2
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/statistics.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
