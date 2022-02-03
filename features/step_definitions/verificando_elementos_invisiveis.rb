Quando('clico em um no botao') do       
    visit '/buscaelementos/botoes'
    find('#teste').click 
    sleep(2)                                 
    end                                                                              
                                                                                   
  Entao('verifico se o texto desapareceu na tela com sucesso') do                  
    page.assert_text('Você Clicou no Botão!')
    #page.has_text?('Você Clicou no Botão!')
    #have_text('Você Clicou no Botão!')

    find('#teste').click   #clico no botão pela segunda vez e o texto deve sumir 

    sleep(2)
    assert_no_text('Você Clicou no Botão!')     #verifica se o texto saiu da tela
    #has_no_text?('Você Clicou no Botão!')

    

    
  end 