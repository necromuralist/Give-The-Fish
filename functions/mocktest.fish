# this isn't a function
# it's an experiment to test using aliases to mock
# functions (see the tests/testmock.fish file)
function mockery -a name
  file $name
end
