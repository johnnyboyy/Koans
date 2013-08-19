# this is where I tested my code with irb since the output
# from the koans was driving me crazy.





def score(dice)
  if dice.empty?
    return 0
  end

   score = 0
   arr = [0, 0, 0, 0, 0, 0, 0]
#sort the array
#use the index of the array as a container
# e.g. if you have three fives, arr[5] will equal 3
  dice.each do |num|
      arr[num] += 1
  end

#take care of the triple one's rule before it fucks me later
  if arr[1] >= 3
    score = score + 1000
    arr[1] -= 3
  end


#if the index holds more than 3, multiply the index value by 100
#and add that to the score
  arr.each_with_index do |q, index|
    if arr[index] >= 3
      score = score + (index * 100)
      arr[index] -= 3
    end
  end


#make up for the special rules for 1's and 5's
  if arr[1] > 0
    score = score + (arr[1] * 100)
  end

  if arr[5] > 0
    score = score + (arr[5] * 50)
  end
       
  return score
end