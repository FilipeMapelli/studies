#!/usr/bin/env ruby

# Carrega as bibliotecas (gems) usadas neste script.
require 'byebug'
require 'mysql2'
require 'pry'

class MySQLExercises1

  attr_reader :client

  def initialize
    @client = Mysql2::Client.new(
      host:     'localhost',
      database: 'ecommerce_sample',
      username: 'root'
    )
  end
  
  # O método `query` do objeto `@client`, criado no construtor acima, pode ser
  # usado para executar queries SQL no nosso banco de dados de exemplo.
  # Quando este método é chamado, ele retorna um objeto contendo diversas
  # informações sobre a query que foi executada, incluindo os resultados
  # da query.

  # Execute uma query qualquer usando o método `query` e responda: qual a
  # classe do objeto retornado por este método? Retorne esta classe.
  def q_about_query_method
    result = client.query("SELECT * FROM users;")
    result.class
  end

  # Quais são as tabelas que existem no DB (database) ecommerce_sample?
  # Retorne um Array contendo os nomes das tabelas como Strings.
  def q_how_many_tables
    array = Array.new
    result = client.query("SHOW tables;").entries
    x = 0
    while x < result.size
      array[x] = result[x].values
      x += 1
    end
    array.flatten
  end


  # Qual é o tipo completo (nome do tipo e tamanho máximo) da coluna `title`
  # da tabela `products`
  # Retorne uma String com o nome do tipo.
  def q_title_data_type
    result = client.query("SELECT COLUMN_TYPE FROM information_schema.COLUMNS 
                           WHERE TABLE_NAME='products' AND COLUMN_NAME='title';").entries
    data_type = result[0].values
    data_type[0]
  end


  # Qual é a chave primária da tabela `categories`?
  # Retorne uma String com o nome da coluna correspondente.
  def q_categories_primary_key
    result = client.query("SELECT COLUMN_NAME FROM information_schema.COLUMNS  
                           WHERE TABLE_NAME = 'products' AND COLUMN_key = 'PRI';").entries
    column_name = result[0].values
    column_name[0]
  end


  # A tabela "reviews" é usada para armazenar as avaliações que os usuários
  # fazem dos produtos. Por exemplo: se o usuário "Joãozinho" avaliou o
  # produto "Luva para bicicleta" com 5 estrelas, existe uma linha na tabela
  # que armazena essa informação.
  #
  # Portanto, na tabela "reviews", existem duas chaves estrangeiras: uma para
  # podermos localizar, na tabela "users", o usuário que fez a avaliação e outra
  # para podermos localizar, na tabela "products", o produto que foi avaliado.
  #

  # Sabendo disso, e lembrando da convenção para o nome das chaves estrangeiras
  # que foi usada na parte teórica, responda:
  #
  # Quais são as duas chaves estrangeiras da tabela "reviews"?
  def q_reviews_foreign_keys
    result = client.query("SELECT COLUMN_NAME FROM information_schema.COLUMNS  
                           WHERE TABLE_NAME = 'reviews' AND COLUMN_NAME LIKE '%_id';").entries
    fk_name = Array.new
    result.each do |n|
        fk_name += n.values
    end
    fk_name
  end
  
end
