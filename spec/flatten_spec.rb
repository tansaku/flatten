# frozen_string_literal: true

require 'flatten'

describe 'flatten' do
  it 'leaves the empty array unchanged' do
    expect(flatten([])).to eq []
  end
  it 'leaves a single element array unchanged' do
    expect(flatten([1])).to eq [1]
  end
  it 'leaves a simple array unchanged' do
    expect(flatten([1, 2, 3])).to eq [1, 2, 3]
  end
  it 'flattens a nested array' do
    expect(flatten([1, [2, [3]], 4])).to eq([1, 2, 3, 4])
  end
  it 'flattens a more deeply nested array' do
    expect(flatten([[1], [[2], [[3]]], [4]])).to eq([1, 2, 3, 4])
  end
  it 'flattens another more deeply nested array' do
    array = [1, 2, 3, [2, [3, 4, 5, [5, 6, [7, 8, 9]]]], 4]
    result = [1, 2, 3, 2, 3, 4, 5, 5, 6, 7, 8, 9, 4]
    expect(flatten(array)).to eq(result)
  end
  it 'only works on arrays' do
    expect { flatten(1) }.to raise_error NonArrayError
  end
end
