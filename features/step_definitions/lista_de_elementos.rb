Quando('mapeio uma tabela') do
    @lista_de_elementos = MapeandoListas.new
    @lista_de_elementos.load 
    sleep(3)
    puts @lista_de_elementos.lista.size                 #temos aqui um array, e imprime a qtd de 24 itens na tabela da pagina
    puts  @lista_de_elementos.lista[0].text             #sendo um array, consigo pegar o texto "Arroz" que está na 1° linha
    expect(@lista_de_elementos.lista.size).to eql 24    #comparo se realmente é igual a qtd de elementos
  

    @lista_de_elementos.lista.each do |listas|          # para cada elemento desta lista, iremos imprimir na tela 
        puts listas.text    
    end
end
  