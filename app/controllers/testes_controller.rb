class TestesController < ApplicationController

	def index
		autor = "Gustavo"
		titulo = "Livro qualquer"
		livro = Livro.new(titulo, autor)
		@descricao = livro.descricao
	end

	class Livro
		def initialize(titulo, autor)
			@titulo = titulo
			@autor = autor
		end

		def descricao
			"O livro é #{@titulo} e o autor é #{@autor}"
		end

		def desc_upcase(descricao)
			descricao.upcase
		end
	end

end
