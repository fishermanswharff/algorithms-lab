require 'spec_helper'
require 'rubygems'
require 'pry'

require_relative '../lib/sorting.rb'

describe Array do

  before(:each) do 
    @array = [2,4,1,6,0,7,3,5,67,32,23,54,21,20,19,16,75,24,27]
    @array2 = [5,8,1,2,0,13,34,6,7]
  end

  it 'bubble sort returns a sorted array' do
    @array.bubble_sort
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])
  end

  it 'selection sort returns a sorted array' do
    @array.selection_sort 
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])
  end

  it 'quick sort returns a sorted array' do
    @array.quick_sort(@array, 0, @array.length - 1)
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])
  end

  it ':insertion sort returns a sorted array' do
    @array.insertion_sort
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])

    @array2.insertion_sort
    expect(@array2).to eq([0, 1, 2, 5, 6, 7, 8, 13, 34])
  end

  it 'merge sort returns a sorted array' do
    @array.merge_sort 
    expect(@array).to eq([0,1,2,3,4,5,6,7,16,19,20,21,23,24,27,32,54,67,75])
  end

end