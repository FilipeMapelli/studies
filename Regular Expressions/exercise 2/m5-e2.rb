class M5E2
   
   #validar se o formato do parâmetro recebido é um cpf	
   def cpf_validation(cpf)
       if cpf.match(/\A\d{3}(\.|)\d{3}(\.|)\d{3}(-|)\d{2}\z/)
           true
       else
           false
       end
   end
   
end
