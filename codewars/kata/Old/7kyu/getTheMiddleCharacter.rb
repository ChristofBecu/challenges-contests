def get_middle(s)
    i = s.size/2
    s.size.odd? ? s[i] : s[i-1..i]
end