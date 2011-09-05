#test-hierarchy

Facilitates hierarchizing shared test methods, for Rails

For users of the Test/Unit system.

In order that the file, 'test/test_helper.rb' not contain a grab-bag of shared, uncategorized test methods.

From the line containing the definition of REQUIRE_TEST_BASENAME, down through:

```ruby
paths.sort.each{|e| require e}
```

This code automatically 'requires' all files named, '_shared.rb' under the directory, 'test/'.
