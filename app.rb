require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#def Fight(round)
   


   player1 = Player.new("Josiane")
   player2 = Player.new("José")

 while player1.life_points >= 0 || player2.life_points >= 0 
   puts "Voici l'état de chaque joueur :"
   puts "=================="
   puts  player1.show_state
   puts  player2.show_state


   puts "Passons à la phase d'attaque :"

   #while player1.life_points >=0 || player2.life_points >=0 
   player1.attacks(player2)
   break if player2.life_points <=0  
   player2.attacks(player1)
   break if player1.life_points <=0 
   
   
   end
   puts "******************"
   puts "|Partie terminée!|"
   puts "******************"
   #puts  player1.show_state
   #puts  player2.show_state
  #end

 # Fight(1)
  
=begin

    À ma droite "Josiane" : crée un Player répondant à ce doux prénom et stocké dans la variable player1.
    À ma gauche "José" : crée un autre Player répondant à ce joli prénom et stocké dans la variable player2.
    Présentons les deux combattants : affiche dans le terminal l'état de chaque combattant grâce à des puts et des show_state. Juste avant, affiche un petit puts "Voici l'état de chaque joueur :".
    Fight ! Indique que le combat commence avec un puts "Passons à la phase d'attaque :".
    Josiane aura l'honneur d'attaquer la première : fais attaquer player2 par player1 avec la méthode attacks.
    José ne va pas se laisser faire : fais l'attaque inverse.
=end






binding.pry