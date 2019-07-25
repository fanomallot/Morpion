require 'bundler'
Bundler.require
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/boardcase'
 #les faire entré dans une tableau
#une initial de bienvenue pour lancer le jeu
puts "		-------------------------------------------------"
puts "		|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "		|Le but du jeu est d'être le dernier survivant !|"
puts "		-------------------------------------------------"
#faire entre le joueur humain
puts "  Entré votre nom de joueur 1: "
print " Le gladiateur  "
give_name1 = gets.chomp
puts "  Entré votre nom de joueur 2: "
print " Le gladiateur  "
give_name2 = gets.chomp
my_game = Game.new(give_name1,give_name2)
my_game.turn
# my_game.test_winer