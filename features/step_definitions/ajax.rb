Quando('clico no botao do meu teste') do
    @ajax = AjaxPage.new
    @ajax.load
    @ajax.clicar_botao
end


Entao('verifico se apareceu') do
    @ajax.wait_for_mensagem
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'
    
  end
  