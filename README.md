Flatten
=======

An algorithm to flatten an arbitrarily nested array of values, e.g.

```rb
[ 1, [ 2, [ 3 ] ], 4 ] -> [ 1, 2, 3, 4 ]
```
Ruby implementation includes tests, checks for test coverage and uses rubocop to check code quality. Performance metrics provided via ruby's default benchmarking tool.

The algorithm operates by iterating through the received array, testing each element in turn.  If an element is an array then it is recursively flattened.  Any element that is not an array is left as is, and both recursively flattened arrays, and non-array items are squashed onto a single array.

Requirements
------------
Ruby 2.6 and above.
Tested and run using Ruby version 2.6.5.

Installation
------------
Run the following in the root of the project to install dependencies

```sh
$ bundle 
```

Usage
-----

In a irb REPL:

```irb
$ bundle exec irb
2.6.5 :001 > require './lib/flatten'
 => false 
2.6.5 :002 > flatten([])
 => [] 
2.6.5 :003 > flatten([1,2,3])
 => [1, 2, 3] 
2.6.5 :004 > flatten([1,[2],3])
 => [1, 2, 3] 
```

Testing
-------

The code can be tested as follows

```sh
$ bundle exec rspec
```

Should give output like the following (including test coverage):

```sh
$ bundle exec rake
Running RuboCop...
Inspecting 5 files
.....

5 files inspected, no offenses detected
...

flatten
  leaves the empty array unchanged
  leaves a single element array unchanged
  leaves a simple array unchanged
  flattens a nested array
  flattens a more deeply nested array
  flattens another more deeply nested array

Finished in 0.00234 seconds (files took 0.16174 seconds to load)
6 examples, 0 failures


COVERAGE: 100.00% -- 5/5 lines in 1 files
```

Performance
-----------
Performance is slightly lower than existing Ruby default implementation.  Run performance check via:

```sh
$ rake performance
```

Which will give output like the following:

```
yarn run v1.15.2
$ rake performance
              user     system      total        real
this flatten:  0.000016   0.000002   0.000018 (  0.000013)
ruby flatten:  0.000006   0.000001   0.000007 (  0.000007)
```

Issues
------
* currently raises error for non Array, but could prefer to ensure incoming argument is array using `Array(array)` to avoid error overhead?
* currently uses a combination iterative/recursive approach.  Could we have a purely recursive and/or purely iterative approach?


Future Work
-----------
* Improve performance
* Release as RubyGem?