#test-hierarchy
A Rails plugin to facilitate the hierarchizing of shared test methods.

In order that your file, 'test/test_helper.rb' not contain a grab-bag of 
shared, uncategorized test methods, this plugin automatically 'requires' 
any files you name, '_shared.rb'.

When running a full test suite, all those under directory, 'test/' are 
found.

When running a single test file, only those under that file's 
subdirectory, e.g., test/unit or test/functional, are found.

##Example Usage
Hierarchize your test methods into files named, '_shared.rb' under the 
directory, 'test'.

##How To Install
In your Rails application:

rails install plugin git://github.com/MarkDBlackwell/test-hierarchy.git

##Requirements

The plugin is for users of the Test/Unit system.

Insert this (uncommented, single) line in your file, 
test/test_helper.rb, right above, 'class ActiveSupport::TestCase':

```ruby
TestHierarchy.new
```

##Testing
TODO -- it was tested by my app, before making it a plugin.

Developed with Rails 3.0.9 & Ruby 1.8.7.

Please let me know if you find anything wrong with it!

Copyright (c) 2011 Mark D. Blackwell. See [MIT-LICENSE](MIT-LICENSE) for details.

