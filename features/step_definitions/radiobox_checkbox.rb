Quando('eu marco um checkbox e um radiobox') do
   visit '/buscaelementos/radioecheckbox'

    #marcando opção checkbox usando find.click  ou via check
    find('label[for="white"]').click    #é uma label com for white, pois pelo id não dava
    check('purple', allow_label_click: true) # elemento não está visivel na label para ser clicado, usa allow
    uncheck('purple', allow_label_click: true)

    #marcando opção radiobox usando o choose 
    choose('red', allow_label_click: true)   
    end