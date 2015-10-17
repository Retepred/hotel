class Cell
  attr_reader :cell_num, :cells, :prisoners, :prisons
  def initialize(options={})
    @name = options[:cell_num]
    @cell = {}
    @prisoners = {}
  end

end