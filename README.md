[![Code
Climate](https://codeclimate.com/github/geoffharcourt/active_model_lint-rspec.png)](https://codeclimate.com/github/geoffharcourt/active_model_lint-rspec)

# ActiveModel Lint for RSpec

Form objects are a great way to move logic out of your controllers and models while ensuring that classes focus on their core responsibility. When you implement ActiveModel behavior in a class, this gem provides a one-line test to ensure that your class implements required behavior such as the ````#persisted?```` method that is required for your form object to function within a Rails form.

The code here was shamelessly cribbed from an example published by [Mike Gerhard](http://github.com/msgehard) at Pivotal Labs. It appears in this [blog post](http://pivotallabs.com/making-sure-you-implement-the-activemodel-interface-fully/). This gem merely puts the shared example into a gem for easy distribution into your project.

## Example

Just one line to attach the shared example to your spec.

```ruby
describe MyFormObjectClass do

  it_behaves_like 'an ActiveModel'

end
```

Then run your specs:

```
MyFormObjectClass
  behaves like an ActiveModel
    test persisted?
    test to param
    test to partial path
    test to key
    test model naming
    test errors aref
```

## Installation

###Rails and other Bundler projects

Add the gem to your test group.

```ruby
group :test do
  gem "active_model_lint-rspec"
end
```

### Other Ruby projects

Require the gem after RSpec has been required.

```ruby
require 'rspec'
require 'active_model_lint-rspec'
```

## Further reading
* http://yehudakatz.com/2010/01/10/activemodel-make-any-ruby-object-feel-like-activerecord/
* http://pivotallabs.com/making-sure-you-implement-the-activemodel-interface-fully/

## Credits

ActiveModelLint-RSpec is packaged by [Geoff
Harcourt](http://github.com/geoffharcourt). It was built using code
from a blog post written by [Mike Gehard](http://github/msgehard).

## License

ActiveModelLint-Rspec is free software, and may be redistributed under the terms of the MIT license.
