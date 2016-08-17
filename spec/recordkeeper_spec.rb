require 'spec_helper'

describe Recordkeeper do
  it 'has a version number' do
    expect(Recordkeeper::VERSION).not_to be nil
  end

  it 'turns an array into a hash' do
    expect([1, 1, 1, 1].recordkeeper).to eq({1=>4})
  end

  it 'turns an array of different objects into a hash' do
    expect(['a', 1, :b, 'b', :a].recordkeeper).to eq ({"a"=>1, 1=> 1, :b=>1, "b"=>1, :a=>1})
  end

  it 'can deal with a nested array' do
    expect([{1=> "a"}, {1=> "a"}, 1, 2].recordkeeper).to eq({ {1=>"a"}=>2, 1=>1, 2=>1 })
  end

  it 'returns an empty hash' do
    expect([].recordkeeper).to eq({})
  end

end
