require 'pry'
require './lib/node.rb'
require './lib/linked_list.rb'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'has no head' do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it 'can append new node' do
    list = LinkedList.new
    list.append("doop") 
    binding.pry
    expect(list.head).to include("doop")

  end

end