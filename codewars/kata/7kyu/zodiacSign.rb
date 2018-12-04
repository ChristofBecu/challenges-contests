def get_zodiac_sign(day, month)
    x = month + day/100.0
   if x < 1.20 
     "Capricorn"
   elsif x < 2.19
     "Aquarius"
   elsif x < 3.21
     "Pisces"
   elsif x < 4.20
     "Aries"
   elsif x < 5.21
     "Taurus"
   elsif x < 6.21
     "Gemini"
   elsif x < 7.23 
     "Cancer"
   elsif x < 8.23
     "Leo"
   elsif x < 9.23
     "Virgo"
   elsif x < 10.23
     "Libra"
   elsif x < 11.22
     "Scorpio"
   elsif x < 12.22
     "Sagittarius"
   else
     "Capricorn"
   end
 end