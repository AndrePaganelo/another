Quando('preencho o formulario') do

    @mapeando = MapeandoElementoPage.new                                                    # instanciando a classe MapeandoElementoPage e guarda na variavel @mapeando

    @mapeando.load                                                                          # carrega a url que foi mapeada

    @mapeando.preencher                                                                     # chamando o metodo que está dentro da classe, pois uma vez instanciado, tenho acesso ao metodo
    
    sleep(4)
end