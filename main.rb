require 'pry-byebug'

require_relative 'prison_chain'
require_relative 'prisons'
require_relative 'cells'
require_relative 'prisoners'

require_relative 'methods'

prison_chain=Prison_chain.new name: "Peter's Private Prisons"

prison_chain.add_prisoner Prisoner.new name:'Nevster'
prison_chain.add_prisoner Prisoner.new name: 'Michael'
prison_chain.add_prisoner Prisoner.new name: 'Graeme'
prison_chain.add_prisoner Prisoner.new name: 'Neil'

prison_chain.add_prison Prison.new name: 'Happiness Farm'
prison_chain.add_prison Prison.new name: 'Joyville'
prison_chain.add_prison Prison.new name: 'Smile Town'

#prisons.add_cell Cell.new cell_num: '1'
#prisons.add_cell Cell.new cell_num: '2'
#prisons.add_cell Cell.new cell_num: '3'
#prisons.add_cell Cell.new cell_num: '4'
#prisons.add_cell Cell.new cell_num: '5'
#prisons.add_cell Cell.new cell_num: '6'
#prisons.add_cell Cell.new cell_num: '7'
#prisons.add_cell Cell.new cell_num: '8'
#prisons.add_cell Cell.new cell_num: '9'
#prisons.add_cell Cell.new cell_num: '10'
#prisons.add_cell Cell.new cell_num: '11'
#prisons.add_cell Cell.new cell_num: '12'
#prisons.add_cell Cell.new cell_num: '13'
#prisons.add_cell Cell.new cell_num: '14'
#prisons.add_cell Cell.new cell_num: '15'
#prisons.add_cell Cell.new cell_num: '16'
#prisons.add_cell Cell.new cell_num: '17'
#prisons.add_cell Cell.new cell_num: '18'
#prisons.add_cell Cell.new cell_num: '19'
#prisons.add_cell Cell.new cell_num: '20'
#prisons.add_cell Cell.new cell_num: '21'
#prisons.add_cell Cell.new cell_num: '22'
#prisons.add_cell Cell.new cell_num: '23'
#prisons.add_cell Cell.new cell_num: '24'
#prisons.add_cell Cell.new cell_num: '25'
#prisons.add_cell Cell.new cell_num: '26'
#prisons.add_cell Cell.new cell_num: '27'
#prisons.add_cell Cell.new cell_num: '28'
#prisons.add_cell Cell.new cell_num: '29'
#prisons.add_cell Cell.new cell_num: '30'

response = menu

while response != 0
  case response
 when 1  
   list_all_prisons(prison_chain)
when 2
   add_prisoner(prison_chain)
# when 3
#   list_all_prisoners_in_cells(prison_chain)
 when 4
   list_all_prisoners(prison_chain)
 when 5
   book_prisoner_into_cell(prisons)
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