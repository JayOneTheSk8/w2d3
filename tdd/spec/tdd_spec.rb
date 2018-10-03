require 'tdd'

describe '#my_uniq' do
  let(:array) { [1, 2, 1, 3, 3] }

  it 'removes duplicates in an array' do
    expect(array.my_uniq).to eq([1, 2, 3])
  end
end

describe '#two_sum' do
  let(:array) { [-1, 0, 2, -2, 1] }
  let(:sorted) { array.two_sum.sort }

  it 'returns all indexes where the elements sum to zero' do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

  it "returns the indexes in sorted order" do
    expect(array.two_sum).to eq(sorted)
  end
end

describe '#my_transpose' do
  let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }

  it 'transposes an array' do
    expect(my_transpose(array)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end


describe '#stock_picker' do
  let(:array) { [1, 2, 0, 6, 7, 8] }
  let(:should_drop)  { [3, 2, 5, 0, 6] }
  let(:recession) { [4, 3, 2, 1, 0] }

  it 'returns an array with indices of the best time to buy and sell' do
    expect(stock_picker(array)).to eq([2, 5])
  end

  it "drops a good price for one better" do
    expect(stock_picker(should_drop)).to eq([3, 4])
  end

  it "should return nil in a recession" do
    expect(stock_picker(recession)).to be_nil
  end
end
