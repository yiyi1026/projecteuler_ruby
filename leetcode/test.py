def plusOne(digits):
    result = []
    temp = 0
    new_digit = digits.pop() + 1
    while new_digit:
        if new_digit + temp< 10:
            result = [new_digit+temp] + result
            temp = 0
        else:
            result = [(new_digit + temp)%10] + result
            temp = (new_digit + temp) // 10
        if digits:
          new_digit = digits.pop()
        else:
          new_digit = 0
          break
    if temp:
        result = [temp] + result
    return result
print plusOne([1,0])