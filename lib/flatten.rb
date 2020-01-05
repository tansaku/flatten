# frozen_string_literal: true

# An algorithm to flatten an arbitrarily nested array of values
# see README and  test cases for more details on operation
def flatten(array)
  raise NonArrayError, 'argument must be an array' unless array.is_a? Array

  array.each_with_object([]) do |element, memo|
    if element.is_a?(Array)
      memo.push(*flatten(element))
    else
      memo.push(element)
    end
  end
end

class NonArrayError < StandardError; end
