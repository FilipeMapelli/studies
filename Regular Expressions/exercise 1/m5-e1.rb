class M5E1
    
    NOTICIAS =  "09:55 - [política] Prefeito da Krakosia é eleito o melhor para economia\n"+ 
                "10:14 - [cotidiano] Cachorro salva dono de assalto\n"+
                "11:01 - [esporte] Seleção local de golfe se classifica para mundial\n"+
                "11:36 - [esporte] João da Silva Sauro é cortado da seleção de golfe\n"+
                "13:19 - [economia] Desemprego sobe para 12% no último mês\n"+
                "14:55 - [política] Lei de incentivo ao esporte é aprovada no senado às 10:20\n"+
                "16:13 - [economia] Cotação do dólar sobe 5% em uma semana\n"+
                "19:26 - [esporte] Liga nacional de basquete tem recorde de público"
    
    #Retornar neste formato (política: Prefeito da Krakosia é eleito o melhor para economia (09:55))	            
    def format_news
        formated = String.new
        M5E1::NOTICIAS.each_line do |line|
            result = line.match(/(\d{2}:\d{2})\s-\s\[(\w.*)\]\s(\w.*)/)
            formated += "#{result[2]}: #{result[3]} (#{result[1]})\n"
        end
        formated
    end

    #Retorna quantidade de notícias do tema economia que fala sobre o dólar
    def find_economy_dollar_news
        array = M5E1::NOTICIAS.scan(/\w.*\s-\s\[economia\](.*)$/).flatten
        x = 0
        y = 0
        result = Array.new
        while x < array.size
            str = String.new
            str = array[x]
            if str.match(/dólar/)
               result[y] = array[x]
               y += 1
            end
            x += 1
        end
        result.size
    end
    
    #coleta os horários das notícias e retorna uma lista (Array, []) de strings com os horários
    def find_times
        array = M5E1::NOTICIAS.scan(/(\d{2}:\d{2})\s-\s.*$/)
        x = 0
        result = Array.new
        while x < array.size
            result[x] = array[x]
            x += 1
        end
        result.flatten
    end
    
end
