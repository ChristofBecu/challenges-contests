def DNA_strand(dna)
    dna = dna.split('')
  for i in (0..dna.size)
    if dna[i] == "A"
      dna[i] = "T"   
    elsif dna[i] == "T"
      dna[i] = "A"    
    elsif dna[i] == "C"
      dna[i] = "G"
    elsif dna[i] == "G"
      dna[i] = "C"
    end  
  end
  return dna.join('')
end


#Of course this could be done much shorter:
def DNA_strand(dna)
    dna.tr('ATGC', 'TACG')
end