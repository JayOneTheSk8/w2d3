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

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }

  describe '#initialize' do
    it "initializes with an array of 3 discs in an array and two empty arrays" do
      expect(game.towers).to eq([[3, 2, 1], [], []])
      expect(game.towers.count([])).to eq(2)
    end
  end

  describe '#move' do
    before(:each) { game.move(0, 1)}

    it "removes the top disc from one tower to another" do
      expect(game.towers).to eq([[3, 2], [1], []])
    end

    it "does not allow you to move to a tower with a smaller disc" do
      expect{ game.move(0, 1) }.to raise_error('You cannot move atop a smaller disc!')
    end

    it "does not allow you to move to the same tower" do
      expect{ game.move(0, 0) }.to raise_error("That is the same tower!")
    end

    it 'does not allow you to move from an empty tower' do
      expect{ game.move(2, 1) }.to raise_error('Tower is empty')
    end

    it "raises an error if the tower picked is non-existent" do
      expect{ game.move(3, 0) }.to raise_error("Tower is non-existent")
      expect{ game.move(0, 3) }.to raise_error("Tower is non-existent")
    end
  end

  describe '#won?' do
    it "returns false if discs are together on one tower" do
      expect(game.won?).to be_falsey
    end

    it "returns true if all discs are on one tower that isn't the first one" do
      game.move(0, 1)
      game.move(0, 2)
      game.move(1, 2)
      game.move(0, 1)
      game.move(2, 0)
      game.move(2, 1)
      game.move(0, 1)
      expect(game.won?).to be_truthy
    end
  end
end
