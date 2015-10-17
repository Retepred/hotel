class Prison
  attr_reader :name, :cells, :prisoners, :prisons
  def initialize(options={})
    @name = options[:name]
    @cell = {}
    @prisoners = {}
  end

  def book_cell(prisoner_name, prison_name)
    prisoner = prisoners[prisoner_name]
    cell = cells.delete(cell)
    prisoner.book_cell(cell)
  end

end