# https://www.codechef.com/problems/BITOBYT

# Bit - 2 ms -> Nibble
# Nibble - 8 ms -> Byte
# Byte - 16 ms -> 2 Bits

#ms = {}
ms = { bit: 2, nibble: 8, byte: 16 }
totalms = 0
ms.each { |_k, v| totalms += v }

citizen = {}

gets.chomp.to_i.times do # T
  citizen = { bit: 0, nibble: 0, byte: 0 }

  n = gets.chomp.to_i

  msdiv = 2**(n / totalms)
  msmod = n % totalms

  msmod == 0 ? citizen[:byte] = msdiv / 2 :
  msmod > ms[:bit] + ms[:nibble] ? citizen[:byte] = msdiv :
  msmod > ms[:bit] ? citizen[:nibble] = msdiv :
                                 citizen[:bit] = msdiv

  citizen.each { |_key, value| print value, ' ' }
  print "\n"
end
