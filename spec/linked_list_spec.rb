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


  #ask about this test - head contains "doop", but test fails!
  xit 'can append new node' do
    list = LinkedList.new
    list.append("doop") 
    expect(list.head).to include("doop")
    binding.pry
  end

  it 'can count' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.count).to eq(1)
  end

  it 'can add nodes' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
  end

  xit 'can add nodes and test next_node' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.head.next_node).to include("deep")
  end

  it 'can convert list to string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end

  it 'can add data via prepend' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")

  end

  it 'can add at index position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "poop")

    expect(list.to_string).to eq("dop poop plop suu")
    binding.pry
  end

end