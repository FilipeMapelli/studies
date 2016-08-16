class Testes
    
    # Existe algum IP que fez um número mais elevado de requisições do que os demais?
    def ip_consult
        hash = Hash.new
        file = File.open("log-do-servidor.log")
        file.each_line do |line|
            result = line.match(/(\d{2,}\.\d{2,}\.\d{2,}\.\d{2,})/)
            key = result.to_s
            if hash.has_key? key
                hash[key] += 1
            else
                hash[key] = 0
            end
        end
        file.close
        array = (hash.values).sort
        hash.key(array[array.size-1])
    end

    #Quantas requisições com status ALERTA ou ERRO, originadas de quaisquer IPs, existem no log?
    def status_request
       file = File.read("log-do-servidor.log")
       array = file.scan(/(ERRO|ALERTA)/)
       array.size
    end
    
end
