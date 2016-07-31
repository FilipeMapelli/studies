class FreshProduct < Product
    
    include DiscountEligible
    
    attr_reader :expiration_date
    
    def initialize(hash)
        self.expiration_date = hash['expiration_date']
        super
    end
    
    def expiration_date=(expiration_date)

            if expiration_date == nil || Time.parse(expiration_date) < Time.now
                fail SimpleStore::Error, 'O produto não pode estar vencido'
            else
                @expiration_date = Date.parse(expiration_date).strftime('%F')  
            end
    end
end