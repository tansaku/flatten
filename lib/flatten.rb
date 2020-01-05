# frozen_string_literal: true

def flatten(array)
  array.each_with_object([]) do |element, memo|
    if element.is_a?(Array)
      memo.push(*flatten(element))
    else
      memo.push(element)
    end
  end
end
