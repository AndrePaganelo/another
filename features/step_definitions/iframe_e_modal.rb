Quando('entro no iframe e preencho os campos') do
    visit '/mudancadefoco/iframe'                  #visito a url do iframe
    
    within_frame('id_do_iframe') do                 #mudo o foco para meu iframe (aqui posso usar o nome do ID puro pois é with_frame)
                                                    #dentro deste metodo iremos fazer as ações dentro  do iframe, que é buscar os campos do iframe
        fill_in(id: 'first_name', with: 'Andre')    #uso o fill_in para preencher um campo que inspecionei pelo id
        fill_in(id: 'last_name',  with: 'Paganelo')
    end
end

Quando('entro no modal e verifico o texto') do
    visit "/mudancadefoco/modal"                #visito a url do modal

    find('a[href="#modal1"]').click             #busca via CSS falando que é uma tag a (assim clico no botao e abre o modal)
    within('#modal1') do                   #dentro do modal, dou foco nele, via CSS pego o id desse modal e checo o texto
                                          #como é um within puro, tenho q usar hashtag para ID ou ponto se for classe
    texto = find('h4')                    # é a única identificação que possui o texto 
    expect(texto.text).to eql 'Modal Teste'
    find('.modal-close').click          #para fechar o modal
    sleep(3)
    end 
    
end