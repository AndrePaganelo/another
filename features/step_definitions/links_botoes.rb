Quando('clico em botoes') do
    visit '/'  #acessando a url principal
    click_on ('Começar Automação Web')  #clic_on vai clicar em algum link ou botao que contenha o texto mapeado, é completo

    #outra forma é o usar apenas o click_button
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')  #passo a classe btn waves-light

    #buscar um elemento e clicar nele usando o find().click
    find('a[onclick="ativaedesativa2()"]').click            #clicando no botao floating
    find('a[onclick="ativaedesativa2()"]').double_click     #dando um duplo clique no mesmo botao Floating
    find('a[onclick="ativaedesativa3()"]').right_click      #clicando com botao direito no botão Flat

    #clicar em link
    visit '/'
    click_link ('Desenvolvido por Bruno Batista')
    sleep (5)
  end