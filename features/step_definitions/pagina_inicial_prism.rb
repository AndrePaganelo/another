
Quando('acesso a url') do
    # assim, não preciso ficar colocando o visit, e sim, seto uma url para cada pageObject
    @home = PaginaInicial.new    #instanciando minha classe PaginaInicial e armazeno dentro da variavel home
    @home.load                   #a variavel home com o metodo load vai carregar a url da pagina setada dentro da classe do page object
    sleep(3)
end

Entao('verifico se estou na pagina inicial') do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end



#Obs: ao utilizar comando bundle exec cucumber, vc executa apenas com as gems daquele determinado projeto. 
# assim evita de ocorrer conflitos, pois executo apenas as que estão configuradas no meu projeto
# Por exemplo, se temos, outras gems de varias versões podem causar conflitos
