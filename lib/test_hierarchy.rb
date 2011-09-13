# In file, 'test/test_helper.rb' above line, 'class 
# ActiveSupport::TestCase', add this line:

## TestHierarchy.new

class TestHierarchy
  if 'test'==ENV["RAILS_ENV"]

    REQUIRE_TEST_BASENAME='_shared.rb'
    PREFIX='./test/'
    TEST_HELPER = "#{PREFIX}test_helper.rb"

#    TEST_GROUP=caller(0).reject{|e| e.start_with? __FILE__}.first.split('/').

    TEST_GROUP=caller(0).reject{|e| e.start_with? TEST_HELPER}.first.
        split('/').reject{|e| '.'==e}.take 2
    paths=[]
    Rails.root.join(*TEST_GROUP).find do |path|
      b=path.basename.to_s
      Find.prune if path.directory? && ?.==b[0]
      paths << path.dirname.join(b.chomp '.rb') if REQUIRE_TEST_BASENAME==b
    end
    paths.sort.each{|e| require e}

  end
end
