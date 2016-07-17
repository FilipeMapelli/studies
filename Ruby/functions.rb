# @
# calcula o fatorial
# @
def factorial (n)
    x = 1
    fact = 1
    while x <= n
        fact = fact * x
        x += 1
    end
    return fact
end

# @
# retorna cadeia de caracteres inversa (sem uso do reverse)
# @
def reverse(string)
    size = string.size
    inverse = ''
    while 0 < size
        inverse += string[size-1]
        size -= 1
    end
    return inverse
end

# @    
# recebe um array e retorna a lista ordenada
# implementação método quick sort
# @
def sort (array, left=0, right=(array.size-1))
    i, j, x, assist = 0, 0, 0, 0
    i = left;
    j = right;
    x = array[(i+j)/2];
    while (i < j)
        while (x > array[i])
            i += 1;
        end
        while (x < array[j])
            j -= 1;
        end
        if (i <= j)
            assist = array[i];
            array[i] = array[j];
            array[j] = assist;
            i += 1;
            j -= 1;
        end
    end
    if (left < j)
        sort(array,left,j);
    end
    if (right > i)
        sort(array,i,right);
    end
    return array
end

# @
# Retorna cadeia de caracteres com todos maiúsculos
# (sem o uso do upcase)
# @
def upcase(string)
    down_range = ('a'..'z')
    up_range = ('A'..'Z')
    up_array = Array.new
    hash = Hash.new
    x = 0
    up_range.each {|n|      # @
        up_array[x] = n     # adiciona as letras maiúsculas ao array     
        x += 1              # @
    }                                     
    x = 0 
    down_range.each {|n|        # @
        hash[n] = up_array[x]   # adiciona chave(minúscula) e valor(maiúscula) ao hash 
        x += 1                  # @
    }                       
    up_string = ''
    x = 0 
    while x < string.size                     
        if hash.has_key? string[x]           # @
            up_string += hash[string[x]]     # testa se o caractere da string já é maiúsculo
        else                                 # ou seja, se ele não é uma chave do hash
            up_string += string[x]           # @
        end                                  
        x += 1
    end
    return up_string
end
