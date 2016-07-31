class Product
    
    attr_reader :title, :price, :manufacturer, :barcode, :code
    
    def initialize(hash={})
       self.title = hash['title']
       self.price = hash['price']
       self.manufacturer = hash['manufacturer_code']
       self.barcode = hash['barcode']
       self.code = generate_control_code
    end
    
    def title=(title)
        if title == '' || title == nil
            fail SimpleStore::Error, "O título do produto não pode ser vazio"
        else
            @title = title
        end
    end
    
    def price=(price)
        if price == nil || price < 0
            fail SimpleStore::Error, "O preço do produto deve ser >= 0.0"
        else
            @price = price
        end
    end
    
    def manufacturer=(manufacturer)
        hash = SimpleStore::AUTHORIZED_MANUFACTURERS.invert
        if hash.has_key? manufacturer
            @manufacturer = hash[manufacturer]
        else
             fail SimpleStore::Error, "O fabricante não está autorizado"
        end
    end
    
    def barcode=(barcode)
        @barcode = barcode
    end
    
    def code=(code)
        @code = code
    end
    
    private
    def generate_control_code
        
       #  product_type = case SimpleStore::AUTHORIZED_MANUFACTURERS[manufacturer]
        #    when 0..1 then 
         #       SimpleStore::PRODUCT_TYPES[:DigitalProduct]
          #  when 2..4 then
           #     SimpleStore::PRODUCT_TYPES[:PhysicalProduct]
        #    when 5..7 then 
         #       SimpleStore::PRODUCT_TYPES[:FreshProduct]
          #  else
           #     SimpleStore::PRODUCT_TYPES[:Product]
    #    end
     #   "#{product_type}--#{SimpleStore::AUTHORIZED_MANUFACTURERS[manufacturer]}--#{barcode}"
    
   
    "#{SimpleStore::PRODUCT_TYPES[self.class.name.to_sym]}--#{SimpleStore::AUTHORIZED_MANUFACTURERS[manufacturer]}--#{barcode}"
    end
end

