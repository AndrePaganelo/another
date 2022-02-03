Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover        #uso do CSS, insiro o ponto para dizer que a busca do elemento é uma classe, pois não havia um id
                                    #e apenas acrescento o comando hover que vai mover o mouse de um elemento
    sleep(4)
end