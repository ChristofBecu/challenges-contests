def to_freud(sentence)
  sentence = sentence.split(' ')
  (0..sentence.size - 1).each do |i|
    sentence[i] = 'sex'
  end
  sentence.join(' ')
end
