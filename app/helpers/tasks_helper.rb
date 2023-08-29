module TasksHelper
	def configura_prazo(time)
		return 'N/A' if time.nil?

		tempo_atual = Time.now
		diferenca_em_segundos = time - tempo_atual

		if diferenca_em_segundos >= 0 
			dias = (diferenca_em_segundos / (24 * 60 * 60)).floor 
			horas = ((diferenca_em_segundos % (24 * 60 * 60)) / (60 * 60)).floor
			minutos = ((diferenca_em_segundos % (60 * 60)) / 60).floor

			data_formatada = time.strftime("%d/%m/%Y %H:%M")
			return "#{data_formatada} (Faltam #{dias} dias, #{horas} horas e #{minutos} minutos)"
		else	
			data_formatada = time.strftime("%d/%m/%Y %H:%M")
			return "#{data_formatada} (Tempo Encerrado)"
		end
	end
end
