class Prisoner
  attr_reader :name, :cells, :prisoners, :prisons
  def initialize(options={})
    @name = options[:name]
    @cell = {}
    @prison = {}
    @prisoners = {}
  end

end