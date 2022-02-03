
Quando('acesso a url de botoes') do
  visit '/buscaelementos/botoes'
end

Entao('verifico se encontrei os elementos') do

    #busca todos elementos da pagina inteira que possua o btn
    page.all ('.btn')       #a busca por classe começa com o ponto seguido do nome da classe que esta o elemento

    #busca um elemento mapeado 
    find('#teste')                   # a busca por id começa com hashtag e seguido do nome do id que esta o elemento
    
    #busca o elemento com o id mapeado
    find_by_id('teste')              # outra forma de buscar pelo id
    
    #busca um botao na pagina
    find_button(class: 'btn waves-light')

    #busca o primeiro elemento encontrado
    first('.btn')   #busca o primeiro botao que tenha essa classe btn

    #busca um link na pagina
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')  #poderia pegar por id, etc.. mas estamos pegando pelo href como exemplo
end