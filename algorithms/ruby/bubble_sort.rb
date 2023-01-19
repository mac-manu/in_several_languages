def bubble_sort(array)

    n = array.length 

    loop do 
        # [1,4,1,3,4,1,3,3]
        # [] 
        # [] 
        
        swapped = false
    

        (n-1).times  do |i| 
            if array[i] > array[i+1]    # first bigger than second 
                array[i], array[i+1]  = array[i+1], array[i]   # swithc elements
                swapped = true
            end  
        end
    
    break if not swapped

    end
    array
end


a = [1,4,1,3,4,1,3,3]
p bubble_sort(a)