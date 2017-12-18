def isValid(s)
  h = Hash.new{|h,k|h[k] = 0}
  s.each_char do |chr|
    h[chr] += 1
  end
  values = h.values
  val_uniq = values.uniq
  min = val_uniq.min
  max = val_uniq.max
  if val_uniq.count == 1
    return "YES"
  elsif (val_uniq.count == 2) && min == 1
    return "YES" if values.count(min) == 1
  elsif (val_uniq.count == 2) && ((val_uniq.max - val_uniq.min) == 1)
    return "YES" if (values.count(min) == 1) || (values.count(max) == 1)
    # ( ((val_uniq.max - val_uniq.min) == 1 )  (values.count(min) == 1) || (values.count(max) == 1))
    # val_uniq.count == 2 && values.count(values.min) == 1
    return "YES"
  else
    return "NO"
  end
end

s = "ibfdgaeadiaefgbhbdghhhbgdfgeiccbiehhfcggchgghadhdhagfbahhddgghbdehidbibaeaagaeeigffcebfbaieggabcfbiiedcabfihchdfabifahcbhagccbdfifhghcadfiadeeaheeddddiecaicbgigccageicehfdhdgafaddhffadigfhhcaedcedecafeacbdacgfgfeeibgaiffdehigebhhehiaahfidibccdcdagifgaihacihadecgifihbebffebdfbchbgigeccahgihbcbcaggebaaafgfedbfgagfediddghdgbgehhhifhgcedechahidcbchebheihaadbbbiaiccededchdagfhccfdefigfibifabeiaccghcegfbcghaefifbachebaacbhbfgfddeceababbacgffbagidebeadfihaefefegbghgddbbgddeehgfbhafbccidebgehifafgbghafacgfdccgifdcbbbidfifhdaibgigebigaedeaaiadegfefbhacgddhchgcbgcaeaieiegiffchbgbebgbehbbfcebciiagacaiechdigbgbghefcahgbhfibhedaeeiffebdiabcifgccdefabccdghehfibfiifdaicfedagahhdcbhbicdgibgcedieihcichadgchgbdcdagaihebbabhibcihicadgadfcihdheefbhffiageddhgahaidfdhhdbgciiaciegchiiebfbcbhaeagccfhbfhaddagnfieihghfbaggiffbbfbecgaiiidccdceadbbdfgigibgcgchafccdchgifdeieicbaididhfcfdedbhaadedfageigfdehgcdaecaebebebfcieaecfagfdieaefdiedbcadchabhebgehiidfcgahcdhcdhgchhiiheffiifeegcfdgbdeffhgeghdfhbfbifgidcafbfcd"

p isValid(s)