require 'pry-byebug'

require_relative 'prison_chain'
require_relative 'prisons'
require_relative 'cells'
require_relative 'prisoners'

require_relative 'methods'

prison_chain=Prison_chain.new name: "Peter's Private Prisons"

prisons=Prison
cells=Cell

prison_chain.add_prisoner Prisoner.new name:'Nevster'
prison_chain.add_prisoner Prisoner.new name: 'Michael'
prison_chain.add_prisoner Prisoner.new name: 'Graeme'
prison_chain.add_prisoner Prisoner.new name: 'Neil'

prison_chain.add_prison Prison.new name: 'Happiness Farm'
prison_chain.add_prison Prison.new name: 'Joyville'
prison_chain.add_prison Prison.new name: 'Smile Town'

prison_chain.add_cell Cell.new cell_num: '1'
#prisons.add_cell Cell.new cell_num: '2'
#prisons.add_cell Cell.new cell_num: '3'
#prisons.add_cell Cell.new cell_num: '4'
#prisons.add_cell Cell.new cell_num: '5'
#prisons.add_cell Cell.new cell_num: '6'
#prisons.add_cell Cell.new cell_num: '7'
#prisons.add_cell Cell.new cell_num: '8'
#prisons.add_cell Cell.new cell_num: '9'
#prisons.add_cell Cell.new cell_num: '10'

response = menu

while response != 0
  case response
 when 1  
   list_all_prisons(prison_chain)
when 2
   add_prisoner(prison_chain)
 when 3
   list_all_cells(prisons)
 when 4
   list_all_prisoners(prison_chain)
 #when 5
 #  book_prisoner_into_cell(prisons)
 when 6
   set_prisoner_free(prison_chain)
 when 7
   torture_prisoner_for_science(prison_chain)
  else
    puts "invalid option"
  end

  puts "press enter to continue"
  gets
  response = menu

end

binding.pry;""