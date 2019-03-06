# test-hierarchy
A Rails plugin allowing a hierarchy of test helper methods.

So that 'test/test_helper.rb' doesn't contain a shared grab-bag of 
uncategorized test helper methods (bad for understanding single tests), 
this plugin automatically 'requires' any files named, '_shared.rb'. 
(Plus, of course, you can use private methods in single test files.)

When running a full test suite, all those files in the filesystem tree 
of 'test' are found.

When running a single test file, only those under that file's test 
subdirectory, e.g., test/unit or test/functional, are found. This aids 
classifying the helper methods.

## Example Usage
Place your test helper methods appropriately into files named, 
'_shared.rb' in the filesystem tree of 'test'.

## How To Install
In your Rails application:

```bash
rails install plugin git://github.com/MarkDBlackwell/test-hierarchy.git
```

## Requirements
The plugin works with Test/Unit -- and maybe it will work with other 
test systems, too.

In your file, 'test/test_helper.rb', above the line, 'class 
ActiveSupport::TestCase' insert:

```ruby
TestHierarchy.new
```

## Testing
Developed with Rails 3.0.9 & Ruby 1.8.7, it was tested by my app, before 
making it a plugin.

TODO -- more testing.

Please let me know if you find anything wrong with it.

Copyright (c) 2011 Mark D. Blackwell. See [MIT-LICENSE](MIT-LICENSE) for details.

