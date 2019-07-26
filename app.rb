require 'bundler'
require 'colorize'
Bundler.require
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/boardcase'
 #les faire entré dans une tableau
#une initial de bienvenue pour lancer le jeu
puts "		__________________________________________________________"
puts "		|Bienvenue sur 'ILS VEULENT TOUS MA POO' !               |"
puts "		|Le but du jeu est d avoir trois croix aligné le premier!|"
puts "		**********************************************************"
#faire entre le joueur humain
puts "  Entré votre nom de joueur 1: ".yellow
print "🤑 👉 "
give_name1 = gets.chomp.yellow
puts "  Entré votre nom de joueur 2: ".blue
print " 🤖 👉 "
give_name2 = gets.chomp.blue
my_game = Game.new(give_name1,give_name2)
my_game.turn
while my_game.ask_replay == true 	
end
