require 'tdd'

describe '#my_uniq' do
  it 'removes duplicates in an array' do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end
end

describe '#two_sum' do
  it 'returns all indexes where the elements sum to zero' do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "returns the indexes in sorted order" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([-1, 0, 2, -2, 1].two_sum.sort)
  end
end

describe '#my_transpose' do
  it 'transposes an array' do
    expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end
