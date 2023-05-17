test_string = 'aaaabbbcaaa'
result_string = ''
count_char = 1
array_test_string = test_string.split('')
array_test_string.each_with_index do |c, index|
  if index <= test_string.length && array_test_string[index+1] == c
    count_char += 1
  else
    if count_char == 1
      result_string += c
    else
      result_string += "#{c}x#{count_char}"
      count_char = 1
    end
  end
end
#----------------
change_string('aaabbcaa')

def change_string(str)
  result_string = ''
  str.split('').chunk{ |c| c }.map{ |c, chk| [c, chk.length] }.each do |item|
    result_string += item[1] == 1 ? item[0] : "#{item[0]}x#{item[1]}"
  end

  result_string
end