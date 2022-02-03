Quando('entro na janela e verifico a mensagem') do                             
    visit '/mudancadefoco/janela'

    janela = window_opened_by do              #janela recebe uma janela que foi aberta pelo link
        click_link 'Clique aqui'
    end

    within_window janela do                      #mudando de foco para a nova janela aberta
      
       #verificando se estou na janela aberta mesmo, pela url aberta
       expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow' 
       @mensagem = find ('.red-text.text-darken-1.center')            #pego a classe pelo CSS inteiro class="red-text text-darken-1 center"
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'   #faço a verificação pelo texto
        janela.close   #vai fechar a janela
    end                              
end                                                                            
   

  Quando('entro no alert e verifico foco a acao') do                             
   visit '/mudancadefoco/alert'
   find('button[onclick="jsAlert()"]').click   #inspeciono o elemento alert
   page.accept_alert

   #clicando no cancelar do alert, ou seja, vai desfazer a ação anterior do aceitar
   find('button[onclick="jsConfirm()"]').click   #inspeciono o elemento alert
   sleep(3)
   page.dismiss_confirm
   sleep(3)
  end  