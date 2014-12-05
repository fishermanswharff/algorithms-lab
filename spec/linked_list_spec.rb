require 'spec_helper'

require_relative '../lib/linked_list.rb'

describe LinkedList do

  let(:ll) do
    LinkedList.new()
  end

  describe '#insert_after' do
    
    before(:each) do
      ll.prepend(10)
      ll.append(20)
    end

    it 'splices value behind node' do
      ll.insert_after(ll.find(10), 15)
      expect(ll.head.next_node.value).to eq 15
    end
  end

  describe '#prepend' do
    it 'adds a node to the beginning of the list' do
      ll.prepend(10)
      expect(ll.head.value).to eq(10)
    end
  end

  describe '#append' do
    it 'adds a node to the end of the list' do
      ll.append(10)
      expect(ll.tail.value).to eq(10)
    end
  end
  
  describe '#pop' do
    it 'removes head' do
      ll.prepend(10)
      ll.pop
      expect(ll.length).to eq(0)
    end

    it 'returns head' do
      ll.prepend(10)
      expect(ll.pop.value).to eq(10)
    end
  end

  describe '#length' do
    it 'returns the number of nodes in the list' do
      expect(ll.length).to eq 0
    end
  end

  
  describe '#find' do
    let(:search_value) do
      20
    end

    before(:each) do
      ll.prepend(10)
      ll.append(20)
      ll.append(30)
    end

    it 'returns the node with the given value' do
      expect(ll.find(search_value).value).to eq search_value
    end
  end

  describe '#reverse' do
    before(:each) do
      ll.prepend(10)
      ll.append(20)
      ll.append(30)

      reversed_ll = ll.reverse
    end

    it 'returns the linked list in reverse' do
      expect(reversed_ll.head.value).to eq 30
    end
    it 'does not alter the original list' do
      expect(ll.head.value).to eq 10
    end
  end

  describe '#reverse!' do
    before(:each) do
      ll.prepend(10)
      ll.append(20)
      ll.append(30)

      ll.reverse!
    end

    it 'alters the list in place by reversing it' do
      expect(ll.head.value).to eq 30
    end
  end

  


end