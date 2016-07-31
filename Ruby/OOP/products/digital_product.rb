class DigitalProduct < Product
    
    include DiscountEligible
    
    attr_reader :expiration_date, :url
    
    def initialize(hash)
        self.expiration_date = hash['expiration_date']
        self.url = hash['url']
        super
    end
    
    def expiration_date=(expiration_date)

            if expiration_date == nil || Time.parse(expiration_date) < Time.now
                fail SimpleStore::Error, 'O produto não pode estar vencido'
            else
                @expiration_date = Date.parse(expiration_date).strftime('%F')  
            end
    end
    
    def url=(url)
        if url[0,4] == 'http'
            @url = url
        else
            fail SimpleStore::Error, 'A URL do produto deve ser válida'
        end
    end
    
end