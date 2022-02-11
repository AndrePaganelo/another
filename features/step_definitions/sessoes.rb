Quando('clico no elemento da sessao.') do
    
    @pagina = Pagina.new        #instancio a classe Pagina
    @pagina.load                #carrega a url

    @pagina.navbar.medium.click  #clico no elemento medium, que esta dentro do navbar da sessao
    sleep(4)

  end