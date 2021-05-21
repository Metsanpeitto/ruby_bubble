################################################################################################################################################
################################################################################################################################################
#
#          Ruby Programming
#          PROJECT: BUBBLE SORT
#          Introduction
#          Sorting algorithms are some of the earliest that you typically get exposed to in Computer Science. It may not be
#           immediately obvious how important they are, but it shouldn’t be hard to think of some examples where your computer needs to
#           sort some massive datasets during everyday operations.
#          
#          One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort,
#           where each element is compared to the one next to it and they are swapped if the one on the left is larger than
#           the one on the right. This continues until the array is eventually sorted.
#          
#          Check out this video from Harvard’s CS50x on Bubble Sort.
#          
#          There’s also an entry on Bubble Sort on Wikipedia that’s worth taking a look at.
#          
#          Assignment
#          Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology 
#           (using #sort would be pretty pointless, wouldn’t it?).
#          > bubble_sort([4,3,78,2,0,2])
#          => [0,2,2,3,4,78]
#
################################################################################################################################################
################################################################################################################################################


def bubble_sort(arr)
    # After sorted the values will be placed in this array
    sorted_arr = []
    # Store the length of the array to know when to stop
    last_index = arr.size
    # Iterate as many times as elements are in the array 
    last_index.times {iterator(arr,last_index)} 
end

def  iterator(arr,last_index)
  # This method iterates and swaps 
  # When swap is needed a flag is rised   
  # Iterate over the array
      for index in (0...last_index)
      # Check if arr[index + 1] is not nil
      if arr[index + 1]
        # Knowing 'index' pickup the current element and the next one
        # to compare them. If next element is smaller, store it
        if arr[index] > arr[index + 1]            
          puts "Array before swap : #{arr}"
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
          puts "Array after swap : #{arr}"
        end 
     end  
  end 
end 

bubble_sort([4,3,78,2,0,2])