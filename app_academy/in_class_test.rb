# # Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question
# # marks,  and exclamation points in a given string and returns the product. If any punctuation does not
# # occur,  don't include it in the product, i.e., don't multiply by zero!
# def product_punctuation(str)
#   punc=".,;:?!"
#   hash=Hash.new(0)
#   str.chars.each do |pun|
#     hash[pun]+=1 if punc.include?(pun)
#   end
#   p hash
#   hash.values.select{|v|v>=1}.reduce(:*)
# end
#
#
# #p product_punctuation("There's a certain Slant of light, Winter Afternoons - That oppresses, like the Heft
# # Of Cathedral Tunes - ")
#
#
#
# def prime?(num)
#   return false if num == 1
#   (2..num/2).each do |i|
#     if num % i == 0
#       return false
#     end
#   end
#   true
# end
# # name=gets.chomp
# # puts 'Hello '+name+" !"
# def neighbor_cell(matrix,line_idx,spot_idx)
#   line=matrix[line_idx]
#   if line_idx>0 && spot_idx>0
#     current_line=[(line[spot_idx-1]), line[spot_idx+1]]
#     upper_line=matrix[line_idx-1][spot_idx-1..spot_idx+1]
#     if line_idx<matrix.length-1
#       lower_line=(matrix[line_idx+1][spot_idx-1..spot_idx+1])
#     else
#       lower_line=nil
#     end
#   elsif line_idx>0
#     current_line=[line[spot_idx+1]]
#     upper_line=matrix[line_idx-1][spot_idx..spot_idx+1]
#     if line_idx<matrix.length-1
#       lower_line=matrix[line_idx+1][spot_idx..spot_idx+1]
#     else
#       lower_line=nil
#     end
#   elsif spot_idx>0
#     current_line=[line[spot_idx-1], line[spot_idx+1]]
#     upper_line=nil
#     lower_line=matrix[line_idx+1][spot_idx-1..spot_idx+1]
#   else
#     current_line= [line[spot_idx+1]]
#     upper_line=nil
#     lower_line=matrix[line_idx+1][spot_idx..spot_idx+1]
#   end
#   #p [[current_line,upper_line,lower_line],line_idx,spot_idx]
#   return [current_line,upper_line,lower_line].flatten
# end
#
# def minesweeper(matrix)
#   result_matrix=Array.new(matrix.length,[])
#   p result_matrix
#   matrix.each.with_index do |line , line_idx|
#     line.each.with_index do |spot , spot_idx|
#       if spot
#         result_matrix[line_idx] += [spot]
#         #p result_matrix[line_idx]
#         next
#       else
#         neighbor_cel=neighbor_cell(matrix,line_idx,spot_idx)
#         #p [[current_line,upper_line,lower_line],line_idx,spot_idx]
#         result_matrix[line_idx] += [neighbor_cel.count {|el|el if el}]
#         #p result_matrix[line_idx][spot_idx],line_idx,spot_idx
#       end
#     end
#   end
#   result_matrix.map.with_index do |line,line_idx|
#     line.map.with_index do |spot,spot_idx|
#       unless spot.is_a?(Integer)
#         neighbor_cel=neighbor_cell(matrix,line_idx,spot_idx)
#         neighbor_cel.count {|el|el if el}
#       else
#         spot
#       end
#     end
#   end
# end
#
# def evenDigitsOnly(n)
#   digit_num=n.to_s.length
#   (1..digit_num).all? {|num|(n % (10**num)).even?}
#   return false
# end
#
# def variableName(name)
#   letter='a'..'z'
#   return false unless name.is_a?(String) && letter.include?(name[0].downcase)
#   num='0'..'9'
#   p name.chars.select {|el|letter.include?(el.downcase) || num.include?(el)||el=='_'}
#   p name.chars.select {|el|letter.include?(el.downcase)}
#
#   name.chars.select {|el|letter.include?(el.downcase) || num.include?(el)||el=='_'}.length==name.length
# end
#
# def circleOfNumbers(n, firstNumber)
#   array=(0...n).to_a
#   p array_rotate=array.rotate(firstNumber)
#   return array_rotate[-array_rotate.length/2]
# end
#
# def stringsRearrangement(inputArray)
#   hash = Hash.new
#   inputArray.each do |x|
#     hash[x] = one_char_diff(inputArray,x)
#   end
#   theList = [inputArray[0]]
#
#   while (theList.length<inputArray.length)
#
#
#   end
#
#
#
# end


# def stringsRearrangement(inputArray)
#   return false if inputArray.nil?
#   array1=Array.new()
#   inputArray.each do |el|
#     array1 << [el,one_char_diff(inputArray,el)]
#   end
#   cnt=0
#   array1.each do |pair|
#     return false if pair[-1].empty?
#     cnt+=1 if pair[-1].length<2
#   end
#   return false if cnt>2
#   return true
# end
#
# def one_char_diff(array,str)
#   array.select do |el|
#     cnt=0
#     el.chars.each_with_index{|e,idx| cnt+=1 unless str[idx] == e}
#     cnt==1
#   end
# end



# def stringsRearrangement1(inputArray)
#   return false if inputArray.nil?
#   array1=Array.new()
#   inputArray.each do |el|
#     array1 << [el,one_char_diff(inputArray,el)]
#   end
#   cnt=0
#   array1.each do |pair|
#     return false if pair[-1].empty?
#     cnt+=1 if pair[-1].length<2
#   end
#   return false if cnt>2
#   array =[one_char_diff(inputArray,inputArray[0])]
#   while true
#     temp=[]
#     break if inputArray.empty?
#     for i in 0...array[-1].length
#       inputArray.delete_at(inputArray.index(array[-1][i]))
#       temp+=[one_char_diff(inputArray,array[-1][i])]
#     end
#     break if temp.empty?
#     array+=temp
#   end
#   return false unless inputArray.empty?
#   return true
# end
#
# def one_char_diff(array,str)
#   array.select do |el|
#     cnt=0
#     el.chars.each_with_index{|e,idx| cnt+=1 unless str[idx] == e}
#     cnt==1
#   end
# end


def stringsRearrangement(inputArray)
  return false if inputArray.nil?
  array1=Array.new()
  inputArray.each do |el|
    array1 << [el,one_char_diff(inputArray,el)]
  end
  cnt=0
  array1.each do |pair|
    return false if pair[-1].empty?
    cnt+=1 if pair[-1].length<2
  end
  return false if cnt>2
  array =array1
  while true
    temp=[]
    break if inputArray.empty?
    for i in 0...array[-1].length
      inputArray.delete_at(inputArray.index(array[-1][i])) unless inputArray.index(array[-1][i]).nil?
      temp+=[one_char_diff(inputArray,array[-1][i])]
    end
    break if temp.empty?
    array+=temp
  end
  return false unless inputArray.empty?
  return true
end

def one_char_diff(array,str)
  array.select do |el|
    cnt=0
    el.chars.each_with_index{|e,idx| cnt+=1 unless str[idx] == e}
    cnt==1
  end
end

p stringsRearrangement(["abc","abx","axx","abc"] )
p stringsRearrangement(["ab",
                        "bb",
                        "aa"])

# def stringsRearrangement(inputArray)
#   return false if inputArray.nil?
#   array=Array.new()
#   inputArray.each do |el|
#     array << [el,one_char_diff(inputArray,el)]
#   end
#   cnt=0
#   array.each do |pair|
#     return false if pair[-1].empty?
#     cnt+=1 if pair[-1].length<2
#   end
#   return false if cnt>2
#   return true
# end

# def one_char_diff(array,str)
#   array.select do |el|
#     cnt=0
#     el.chars.each_with_index{|e,idx| cnt+=1 unless str[idx] == e}
#     cnt==1
#   end
# end



