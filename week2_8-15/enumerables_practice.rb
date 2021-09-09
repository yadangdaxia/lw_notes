minions = [1, 7, 3, 2]

def sum_odd_indexed(array)
  array.each_with_index do |element, index|
    if index.odd?
      newvar = array.push(index)
      puts newvar
    end
  end
end
puts "-----"
sum_odd_indexed(minions)


irishmen = [5, 7, 4, 2, 1, 25]

def sum_odd_indexed(array)

  array.each_with_index do |num, index|
   sum << num if index.odd?
    newarray << element + 1

  end

  # newarray = array.map do |num, index|
  #  num + 1
  # end

  end

  sum_odd_indexed(irishmen)
