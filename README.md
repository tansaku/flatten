Flatten
=======

An algorithm to flatten an arbitrarily nested array of values, e.g.

[ 1, [ 2, [ 3 ] ], 4 ] -> [ 1, 2, 3, 4 ]

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

Todo
-----
* more test cases
* comments?
* error handling
* performance
* github