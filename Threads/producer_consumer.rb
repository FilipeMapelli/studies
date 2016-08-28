OUTPUT = []

class Producer
  def initialize(queue)
    @queue = queue
  end

  def run
    # TODO: produce jobs
    @queue.push(131)
    @queue.push(271)
    @queue.push(991)
    @queue.push(3102)
    @queue.push(8172)
    @queue.push(9102)
    @queue.push('END')
  end
end

class Consumer
  def initialize(queue)
    @queue = queue
  end

  def run
    while (job = @queue.pop) != 'END'
      consume(job)
    end
    @queue.push('END')
  end

  def consume(job)
    # TODO: execute the job
    OUTPUT.push(job*10)
  end
end

# NÃ£o Ã© necessÃ¡rio adicionar o cÃ³digo de execuÃ§Ã£o do Produtor e do Consumidor,
# basta implementar suas classes.
# O corretor deste exercÃ­cio executarÃ¡ tanto o Produtor quanto o Consumidor.