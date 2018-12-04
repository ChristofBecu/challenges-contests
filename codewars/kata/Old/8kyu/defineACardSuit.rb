def define_suit(card)
    case card[-1]
    when 'C'
      'clubs'
    when 'S'
      'spades'
    when 'D'
      'diamonds'
    when 'H'
      'hearts'
    end
end