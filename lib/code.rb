# Insert this code in your file, test/test_helper.rb,
# right above, 'class ActiveSupport::TestCase'.

REQUIRE_TEST_BASENAME='_shared.rb'
TEST_GROUP=caller(0).reject{|e| e.start_with? __FILE__}.first.split('/').
    reject{|e| '.'==e}.take 2
paths=[]
App.root.join(*TEST_GROUP).find do |path|
  b=path.basename.to_s
  Find.prune if path.directory? && ?.==b[0]
  paths << path.dirname.join(b.chomp '.rb') if REQUIRE_TEST_BASENAME==b
end
paths.sort.each{|e| require e}
