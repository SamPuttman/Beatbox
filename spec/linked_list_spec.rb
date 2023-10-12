require 'pry'
require './lib/node.rb'
require './lib/linked_list.rb'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)

  end

  it 'has head' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
    binding.pry
  end

end