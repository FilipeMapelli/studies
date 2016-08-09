class M5E1
    
    NOTICIAS =  "09:55 - [política] Prefeito da Krakosia é eleito o melhor para economia\n"+ 
                "10:14 - [cotidiano] Cachorro salva dono de assalto\n"+
                "11:01 - [esporte] Seleção local de golfe se classifica para mundial\n"+
                "11:36 - [esporte] João da Silva Sauro é cortado da seleção de golfe\n"+
                "13:19 - [economia] Desemprego sobe para 12% no último mês\n"+
                "14:55 - [política] Lei de incentivo ao esporte é aprovada no senado às 10:20\n"+
                "16:13 - [economia] Cotação do dólar sobe 5% em uma semana\n"+
                "19:26 - [esporte] Liga nacional de basquete tem recorde de público"
                
    def format_news(string)
        time = M5E1::NOTICIAS.scan(/^(\d{2}:\d{2})\s-\s\[\w.*\]\s.*$/)
        news = M5E1::NOTICIAS.scan(/^\d{2}:\d{2}\s-\s\[\w.*\]\s(.*)$/)
        theme = M5E1::NOTICIAS.scan(/^\d{2}:\d{2}\s-\s\[(\w.*)\]\s.*$/)
        x = 0
        while x < time.size
            puts "#{theme[x]}: #{news[x]} (#{time[x]})"
            x += 1
        end
        #Terminar implementação do método
    end
    
end
