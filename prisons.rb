class Prison
  attr_reader :name, :cells, :prisoners, :prisons, :cell_num
  def initialize(options={})
    @name = options[:name]
    @cell = {}
    @prisoners = {}
  end

#  def add_cell(cell)
#    cells[cell.celltitle] = cell
#  end

end