Dados('que estou na tela de drag_and_drop') do
    visit '/iteracoes/draganddrop'
  end
  
  Quando('movo o dragdrop') do
    @primeiro_elemento = find('#winston') #mapeando o elemento da figura da carinha 
    @segundo_elemento = find('#dropzone') #mapeando o elemento do quadrado 

    @primeiro_elemento.drag_to(@segundo_elemento) #move a carinha para dentro do quadrado
    sleep(4)
  end
  