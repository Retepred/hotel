require 'pry-byebug'

require_relative 'prisonchain'
require_relative 'prisons'
require_relative 'cells'
require_relative 'prisoners'

require_relative 'methods'

prisonchain=Prisonchain.new name: "Peter's Private Prisons"

prisons=Prison
cells=Cell

prisonchain.add_prisoner Prisoner.new name:'Nevster'
prisonchain.add_prisoner Prisoner.new name: 'Michael'
prisonchain.add_prisoner Prisoner.new name: 'Graeme'
prisonchain.add_prisoner Prisoner.new name: 'Neil'

happyness = prisonchain.add_prison Prison.new name: 'Happiness Farm'
joy = prisonchain.add_prison Prison.new name: 'Joyville'
smile = prisonchain.add_prison Prison.new name: 'Smile Town'

#happyness.add_cell Cell.new cell_num: '1'
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
   list_all_prisons(prisonchain)
when 2
   add_prisoner(prisonchain)
 when 3
   list_all_cells(prisons)
 when 4
   list_all_prisoners(prisonchain)
 #when 5
 #  book_prisoner_into_cell(prisons)
 when 6
   set_prisoner_free(prisonchain)
 when 7
   torture_prisoner_for_science(prisonchain)
  else
    puts "invalid option"
  end

  puts "press enter to continue"
  gets
  response = menu

end

binding.pry;""