@title = ">>>>>>>>>>>>Welcome to Peter's Private Prisons booking service<<<<<<<<<<"
@title_picture = "( ͡° ͜ʖ ͡°)"
@title_picture_bookshelf = "
  _________________________
     ||   ||     ||   ||
     ||   ||, , ,||   ||
     ||  (||/|/(||/   ||
     ||  ||| _'_`|||  ||
     ||   || o o ||   ||
     ||  (||  - `||)  ||
     ||   ||  =  ||   ||
     ||   ||'___/||   ||
     ||___||) , (||___||
    /||---||-'_/-||---||'
   / ||--_||_____||_--|| '
  (_(||)-| S123-45 |-(||)_)
|'''''''''''''''''''''''''''|
| 'Honest, ossifer, I don't |
|'member whips, chains, and |
| leather womens....*burp*' |
 '''''''''''''''''''''''''''
"

def menu
  puts `clear`
  puts
  puts
  puts @title.center(80)
  puts @title_picture.center(80)
  puts @title_picture_bookshelf.center(80)
  puts
  puts
  puts "1. List all Prisons"
  puts "2. Add new Prisoner"
  puts "3. List all Prisones in Cells"
  puts "4. List all Prisoners"
  puts "5. Book a Cell"
  puts "6. Set Prisoner Free"
  puts "7. Torture Prisoner for science"
  puts
  puts "0. Quit"
  puts
  puts "-->"
  gets.to_i
end

def add_prisoner(prisonchain)
  print "what is the name of the new Prisoner? "
  name = gets.chomp
  prisoner = Prisoner.new(name: name)
  prisonchain.add_prisoner(prisoner)
end

def list_all_prisoners(prisonchain)
  puts prisonchain.list_all_prisoners
end

def add_prison(prisonchain)
  print "what is the name of the new Prison? "
  name = gets.chomp
  prison = Prison.new(name: name)
  prisonchain.add_prison(prison)
end

def add_cell(prisons)
  print "what is the name of the new Cell? "
  celltitle = gets.chomp
  cell = Cell.new(cell_num: name)
  prisons.add_cell(prison)
end

def list_all_prisons(prisonchain)
  puts prisonchain.list_all_prisons
end

def set_prisoner_free(prisonchain)
  puts
  puts prisonchain.list_all_prisoners
  print "which Prisoner is to be sent to Australia?: "
  prisoner_name = gets.chomp
  prisoner = prisonchain.prisoners[prisoner_name]
  puts

  prisonchain.set_prisoner_free(prisoner_name)
end

def torture_prisoner_for_science(prisonchain)
  puts prisonchain.list_all_prisoners
  puts "which prisoner would you like to send to the Beagle chamber? "
  prisoner_name = gets.chomp
  puts "
  Waking the beagles...
  (⌐■_■)--︻╦╤─ - - - (╥﹏╥)
  \n"
  sleep 4
  puts "tossing the prisoner in.."
  sleep 2
  puts "pulling prisoner #{prisoner_name} out\n\n"
end

def book_prisoner_into_cell(prisons)
  print "which prison is the convict going to stay in? "
  prison_name = gets.chomp
  print "which Prisoner is going to jail? "
  prisoner_name = gets.chomp

  prisons.book_cell(prisoner_name, prison_name)
end