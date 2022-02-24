Quando('eu faco cadastro') do
    visit '/users/new'
    
    fill_in(id: 'user_name', with: 'Andres')                      #vai achar o campo que coloca-se nome e vai preencher com Andre Pagas
    find('#user_lastname').set('Paganeloo')                       #outra forma de achar e preencher
    find('#user_email').send_keys('andredeedae@qlq.com')                 #outra forma de achar e preencher
    fill_in(id: 'user_address', with: 'Rua 12')                     
    find('#user_university').set('Metodista')                       
    find('#user_profile').send_keys('Analista')   
    fill_in(id: 'user_gender', with: 'Masculino')                     
    find('#user_age').set('41')     
    
    find('input[value="Criar"]').click               #clicando no botão criar, como esse elemento não tem id, pegaremos pelo value e sua tag é input
    
end
  

  Entao('verifico se fui cadastrado') do

    #buscando o campo dentro da tag "p" que possui o texto de sucesso e armazenando em uma variavel chamada texto
    texto = find('#notice')

    #inspecionando, verifico se esse texto da variavel é igual ao exibido
    expect(texto.text).to eql 'Usuário Criado com sucesso'
    sleep(5)
  end