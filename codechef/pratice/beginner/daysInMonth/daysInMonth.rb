class Codechef
  attr_reader :result
  def initialize(daysInMonth, dayOfWeek)
    @daysInMonth = daysInMonth
    @dayOfWeek = dayOfWeek
    @result = Array.new(7, nil)
    initDaysInMonth
    calculateResult
    printResult
  end

  def initDaysInMonth
    case @daysInMonth
    when 28
      @result = [4, 4, 4, 4, 4, 4, 4]
    when 29
      @result = [5, 4, 4, 4, 4, 4, 4]
    when 30
      @result = [5, 5, 4, 4, 4, 4, 4]
    when 31
      @result = [5, 5, 5, 4, 4, 4, 4]
    end
  end

  def calculateResult
    case @dayOfWeek
    when 'mon'
      @result
    when 'tues'
      @result.rotate!(-1)
    when 'wed'
      @result.rotate!(-2)
    when 'thurs'
      @result.rotate!(-3)
    when 'fri'
      @result.rotate!(-4)
    when 'sat'
      @result.rotate!(-5)
    when 'sun'
      @result.rotate!(-6)
    end
  end
  
  def printResult
    @result.each do |x|
      print x, " "
    end
    print "\n"
  end

end



gets.chomp.to_i.times do # T
  input = gets.chomp.split
  daysInMonth = input[0].to_i
  dayOfWeek = input[1]
  codechef = Codechef.new(daysInMonth, dayOfWeek)

end
