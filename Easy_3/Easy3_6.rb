def xor?(arg1, arg2)
  if (arg1 == true && arg2 == false) || (arg1 == false && arg2 == true)
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false


