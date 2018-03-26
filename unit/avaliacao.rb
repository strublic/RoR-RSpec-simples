class Avaliacao
	def avaliar(notaprova, notatrabalho)
	   if notaprova >= 7
	       if (notatrabalho >= 7)
	               return "Aprovado"
	       else
	               return "Precisará repor a nota do trabalho"
	          end
	   else
	       return "Terá de fazer DP"
	     end
	end
end