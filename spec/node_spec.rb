require 'pry'
require 'node.rb'

RSpec.describe Node do
  it 'exists' do
    node = Node.new("plop")

    expect(node).to be_instance_of(Node)
  end

  it 'contains data' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
  end

  it 'defines next_node as nil' do
    node = Node.new("plop")

    expect(node.next_node).to eq(nil)
    binding.pry
  end

end
