
class Game 
	attr_accessor :player1 ,:a , :longueur, :bor ,:player2 , :stock , :give_choice
	def initialize(player1 , player2)
		@player1 = Player.new(player1, "X".yellow)
		@player2 = Player.new(player2, "O".blue)
		@bor = Boardcase.new
		@stock = bor.casee
		@a = [1,2,3,4,5,6,7,8,9]
	end
	def ask_choice
		puts "Donnez un numero de votre choix vue dans le tableau"
	end
	 
	def make_choice
		ask_choice
		print " 👉 "
		@give_choice = gets.chomp
		while @give_choice != "#{a[0]}" && @give_choice != "#{a[1]}" && @give_choice != "#{a[2]}" && @give_choice != "#{a[3]}" && @give_choice != "#{a[4]}" && @give_choice != "#{a[5]}" && @give_choice != "#{a[6]}" && @give_choice != "#{a[7]}"&& @give_choice != "#{a[8]}"
			puts "Erreur 🙄 ,entré de nouveau"
			print " 👉 "
			@give_choice = gets.chomp
		end
		elimine_case(@a)
		@longueur = @a.length
		return @give_choice
	end
	def elimine_case(tab)
		tab.delete(@give_choice.to_i)	
	end	
	def act_choice(player)
		make_choice
		
		for i in 1..3 do
			if @give_choice == "#{i}"
				@stock[0,(i-1)*2] = player
			end
		end
		for i in 4..6 do
			if @give_choice == "#{i}"
				@stock[2,(i-4)*2] = player
			end
		end
		for i in 7..9 do
			if @give_choice == "#{i}"
				@stock[4,(i-7)*2] = player
			end
		end
	end
	def test_winer
		for i in 0..2 do
			puts @stoke
			if @stock[i*2,0] == @stock[i*2,2] && @stock[i*2,2] == @stock[i*2,4]
				if @stock[i*2,0] == "X".yellow
					puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player1.player_name} is the winner  👌 👌 👋 👋".yellow
				else 
					puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player2.player_name} is the winner  👌 👌 👋 👋".blue
				end
				return true
			end
			if @stock[0,i*2] == @stock[2,i*2] && @stock[2,i*2] == @stock[4,i*2]
				if @stock[0,i*2] == "X".yellow
					puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player1.player_name} is the winner  👌 👌 👋 👋".yellow
				else 
					puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player2.player_name} is the winner  👌 👌 👋 👋".blue
				end
				return true
			end
		end
		if @stock[0,0] == @stock[2,2] && @stock[2,2] == @stock[4,4]
			if @stock[0,0] == "X".yellow
				puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player1.player_name} is the winner  👌 👌 👋 👋".yellow
			else 
				puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player2.player_name} is the winner  👌 👌 👋 👋".blue
			end
			return true
		elsif @stock[0,4] == @stock[2,2] && @stock[2,2] == @stock[4,0]
			if @stock[0,4] == "X".yellow
				puts  "👋 👋  👌 👌 jeu terminé ,  🤖 #{player1.player_name} is the winner  👌 👌 👋 👋".yellow
			else 
				puts "👋 👋  👌 👌 jeu terminé ,  🤖 #{player2.player_name} is the winner  👌 👌 👋 👋".blue
			end
			return true
		end
		return false
	end
	def test_nul
		if @a.length == 0
			puts "match nul , bravo à vous"
			return true
		else 
			return false
		end

	end
	def turn
		while test_winer == false && test_nul == false
			system "clear"
			@bor.show_screen
			puts " #{player1.player_name} joue"
			act_choice(player1.symbole)
			system "clear"
			@bor.show_screen
			if test_winer == true || test_nul == true
				return true
				break
			end
			puts " #{player2.player_name} joue"
			act_choice(player2.symbole)
			@bor.show_screen
		end
		return true
	end
	def ask_replay
		puts " "
		puts "👥👥 voulez-vous rejouer? 👥👥
		tape 1 si oui ou 0 pour arrêter"
		print = " 👉 "
		replay = gets.chomp
		while replay != "0" && replay != "1"
			puts "Erreur 🙄 ,entré de nouveau"
			print " 👉 "
			replay= gets.chomp
		end 
		if replay == "1"
			@a = [1,2,3,4,5,6,7,8,9]
			@stock = bor.casee
			self.turn
			return true
		else
			print"🖐️  🖐️ Bye".blue 
			puts "  gyus 🖐️ 🖐️".yellow
			return false
		end
	end
end
