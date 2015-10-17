class Prison_chain
  attr_reader :name, :prisons, :prisoners
  def initialize(options={})
    @name = options[:name]
    @prisons = {}
    @prisoners = {}
  end

  def add_prisoner(prisoner)
    prisoners[prisoner.name] = prisoner
  end

  def add_cell(cell)
    cells[cell.name] = cell
  end

  def list_all_prisoners
    if prisoners.empty?
      "We currently have no criminals in any of our prisons. Watch out for the restless dead!"
    else
      prisoner_list = prisoners.map do |name|
        puts name.join("\n")
      end
    end
  end

  def set_prisoner_free(prisoner_name)
    prisoner = prisoners.delete(prisoner_name)
  end

  def add_prison(prison)
    prisons[prison.name] = prison
  end

  def list_all_prisons
    if prisons.empty?
      "We currently have no Prisons and therefore are most probably bankrupt!"
    else
      prison_list = prisons.map do |name|
        puts name.join("\n")
      end
    end
  end

end