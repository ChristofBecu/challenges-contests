class SymetricMatrix
  attr_reader :base
  def initialize(base)
    @base = base
    @matrix = Array.new(base) { Array.new(base, 0) }
  end
end

a = SymetricMatrix.new(3)