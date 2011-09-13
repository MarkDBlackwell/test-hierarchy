#test-hierarchy
A Rails plugin allowing a hierarchy of test helper methods.

So that 'test/test_helper.rb' doesn't contain a grab-bag of shared, 
uncategorized test helper methods, this plugin automatically 'requires' 
any files named, '_shared.rb'.

When running a full test suite, all (in the tree) under directory, 
'test/' are found.

When running a single test file, only those (in the tree) under that 
file's test subdirectory, e.g., test/unit or test/functional, are found.

##Example Usage
Appropriately place your test helper methods into files named, 
'_shared.rb' in the 'test' filesystem tree.

##How To Install
In your Rails application:

```bash
rails install plugin git://github.com/MarkDBlackwell/test-hierarchy.git
```

##Requirements
The plugin works with Test/Unit -- maybe with other test systems, too.

In your file, 'test/test_helper.rb', right above the line, 'class 
ActiveSupport::TestCase' insert this (uncommented, single) line:

```ruby
TestHierarchy.new
```

##Testing
TODO -- it was tested by my app, before making it a plugin.

Developed with Rails 3.0.9 & Ruby 1.8.7.

Please let me know if you find anything wrong with it!

Copyright (c) 2011 Mark D. Blackwell. See [MIT-LICENSE](MIT-LICENSE) for details.

