class M5E2
   
   #validar se o formato do parâmetro recebido é um cpf	
   def cpf_validation(cpf)
       if cpf.match(/\A\d{3}(\.|)\d{3}(\.|)\d{3}(-|)\d{2}\z/)
           true
       else
           false
       end
   end
	
   #validar se o valor do parâmetro recebido é um email
   def email_validation(email)
       if email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/)
          return true 
       else
          return false 
       end
   end
   
end
