# require 'pry'
# require 'byebug'

class Array

  def bubble_sort
    for i in 0...self.length - 1
      for j in 0...self.length - 1
        if self[j] > self[j + 1]
          temp = self[j]
          self[j] = self[j + 1]
          self[j + 1] = temp
        end
      end
    end
  end

  def selection_sort
    for i in 0...(self.length-1)
      smallsub = i
      for j in (i+1)...(self.length)
        if self[j] < self[smallsub]
          smallsub = j
        end
      end
      self[i],self[smallsub] = self[smallsub],self[i]
    end
  end

  def quick_sort(array,low,high)
    if low < high
      p array
      pivot_location = partition(array,low,high)
      quick_sort(array,low,pivot_location - 1)
      quick_sort(array,pivot_location + 1, high)
    end
  end

  def insertion_sort
    for i in 2...(self.length)
      j = i
      
      while (j > 0) && self[j] < self[j - 1] do
        temp = self[j]
        self[j] = self[j - 1]
        self[j - 1] = temp
        j = j - 1
      end
    end
  end

  def merge_sort
  end

  private
  def partition(array,low,high)
    pivot = array[low]
    leftwall = low

    for i in (low + 1)..high
      if array[i] < pivot
        leftwall = leftwall + 1
        array[i], array[leftwall] = array[leftwall], array[i]
      end
    end

    array[low], array[leftwall] = array[leftwall], array[low]
    return leftwall
  end

end

=begin
Suppose A is an array of N values. We want to sort A in ascending order.

Insertion Sort is an algorithm to do this as follows: 
We traverse the array and insert each element into the sorted part 
of the list where it belongs. This usually involves pushing down the 
larger elements in the sorted part.

 For I = 2 to N
   J = I
   Do while (J > 1) and (A(J) < A(J - 1)
     Temp = A(J)
     A(J) = A(J - 1)
     A(J - 1) = Temp
     J = J - 1 
   End-Do
 End-For

Insertion Sort does roughly N**2 / 2 comparisons and does up to N - 1 swaps. 
=end



=begin

quicksort(A, i, k):
  if i < k:
    p := partition(A, i, k)
    quicksort(A, i, p - 1)
    quicksort(A, p + 1, k)

// left is the index of the leftmost element of the subarray
// right is the index of the rightmost element of the subarray (inclusive)
// number of elements in subarray = right-left+1

  partition(array, left, right)
     pivotIndex := choosePivot(array, left, right)
     pivotValue := array[pivotIndex]
     swap array[pivotIndex] and array[right]
     storeIndex := left
     for i from left to right - 1
         if array[i] < pivotValue
             swap array[i] and array[storeIndex]
             storeIndex := storeIndex + 1
     swap array[storeIndex] and array[right]  // Move pivot to its final place
     return storeIndex


Quicksort(A as array, low as int, high as int)
    if (low < high)
        pivot_location = Partition(A,low,high)
        Quicksort(A,low, pivot_location - 1)
        Quicksort(A, pivot_location + 1, high)

Partition(A as array, low as int, high as int)
     pivot = A[low]
     leftwall = low

     for i = low + 1 to high
         if (A[i] < pivot) then
             leftwall = leftwall + 1
             swap(A[i], A[leftwall])

     swap(A[low],A[leftwall])

    return (leftwall)
=end


=begin
Suppose A is an array of N values. We want to sort A in ascending order. 
That is, A[1] should be the smallest and A[N] should be the largest.

The idea of Selection Sort is that we repeatedly find the smallest element 
in the unsorted part of the array and swap it with the first element in the 
unsorted part of the array.

     For I = 1 to N-1 do:
       Smallsub = I
       For J = I + 1 to N-1 do:
         If A(J) < A(Smallsub)
           Smallsub = J
         End-If
       End-For
       Temp = A(I)
       A(I) = A(Smallsub)
       A(Smallsub) = Temp
     End-For

A refinement of the above pseudocode would be to avoid swapping an element 
with itself.

An alternate way to sort in ascending order is to find the largest value 
and swap with the last element in the unsorted part of the array.

Selection Sort does roughly N**2 / 2 comparisons and does N swaps.
=end

=begin
Suppose A is an array of N values. We want to sort A in ascending order.

Bubble Sort is a simple-minded algorithm based on the idea that we 
look at the list, and wherever we find two consecutive elements out 
of order, we swap them. We do this as follows: 
We repeatedly traverse the unsorted part of the array, 
comparing consecutive elements, and we interchange 
them when they are out of order. The name of the algorithm 
refers to the fact that the largest element "sinks" to the 
bottom and the smaller elements "float" to the top.

     For I = 1 to N - 1
       For J = 1 to N - 1
         If (A(J) > A(J + 1)
           Temp = A(J)
           A(J) = A(J + 1)
           A(J + 1) = Temp
         End-If
       End-For
     End-For

Bubble Sort does roughly N**2 / 2 comparisons and does up to N**2 / 2 swaps.
=end
# [2,4,1,6,0,7,3,5,67,32,23,54,21,20,19,16,75,24,27].bubble_sort

# p [5,8,1,2,0,13,34,6,7].sort