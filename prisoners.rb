class Prisoner
  attr_reader :name, :cells, :prisoners
  def initialize(options={})
    @name=options[:name]
    @cell={}
  end

  def book_cell(prisons)
    cells[cell.title] = cell
  end

end