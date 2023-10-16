require './lib/beat_box'
require './lib/linked_list'
require './lib/node'
require 'pry'

RSpec.describe BeatBox do
  it 'exists' do
    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  it 'contains list' do
    bb = BeatBox.new

    expect(bb.list.head).to eq(nil)
  end

  it 'can append' do
    bb = BeatBox.new
    bb.append("deep do ditt")

    expect(bb.list.count).to eq(3)
  end

  it 'can append again' do
    bb = BeatBox.new
    bb.append("deep do ditt dop")

    expect(bb.list.count).to eq(4)
    binding.pry
  end

end