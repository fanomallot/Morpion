
require 'matrix'
class Boardcase
	attr_accessor :matrice
	def casee
		@matrice = Matrix[["1","|","2","|","3"  ] ,["-------------" , nil ,nil ,nil,nil], ["4","|","5","|","6"] ,["-------------" , nil ,nil ,nil,nil],["7","|","8","|","9"]]
		
		return @matrice
	end
	def show_screen
		for i in 0..4 do
			for j in 0..4 do
				print " #{@matrice[i,j]} "
			end
			puts ""
		end
	end
end

