Quando('preencho o formulario para teste de melhoria do page object') do


    # @mapeando = MapeandoElementoPage.new            # instanciando a classe MapeandoElementoPage e guarda na variavel @mapeando
    # @mapeando.load                                  # carrega a url que foi mapeada
    # @mapeando.preencher                             # chamando o metodo que está dentro da classe, pois uma vez instanciado, tenho acesso ao metodo
    
    home.load           #chamo o metodo
    home.preencher      #chamo o metodo
    sleep(4)
end