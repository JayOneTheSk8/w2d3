require 'tdd'

describe "#my_uniq" do
  it 'removes duplicates in an array' do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end
end