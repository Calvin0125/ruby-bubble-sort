#get user input and change to array of integers
puts "enter numbers separated by commas"
user_array = gets.chomp.split(",")
user_array.map! {|number| number.to_i}
sorted = user_array.length - 1
#nested loops for descending sorting of array
#must sort through array n-1 times, and each time stop sorting at an index one lower than previous sort
i = 0
while i < (user_array.length - 1) do
    j = 0
    while j < sorted do
        if user_array[j] > user_array[j+1]
            user_array[j], user_array[j+1] = user_array[j+1], user_array[j]
        end
        j += 1
    end
    sorted -= 1
    i += 1
end
p user_array