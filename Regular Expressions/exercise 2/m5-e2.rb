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
          true 
       else
          false 
       end
   end

   #validar se o parâmetro recebido é um preço em real ou em dólar
   def price_validation(price)
       if price.match(/\AR\$(\s|)(\d{1,3}(\.\d{3})*)(\,\d{2})\z|\AU\$(\s|)(\d{1,3}(\,\d{3})*)(\.\d{2})\z/)
          true 
       else
          false
       end
   end
   
end
