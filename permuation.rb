#This method will take two strings, and decide if one is a permutation of the other

def permutation?(str1, str2)
  true if ((str1.include? str2) || (str2.include? str1))
else
  false
end
