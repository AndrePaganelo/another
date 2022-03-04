class AjaxPage < SitePrism::Page
set_url '/buscaelementos/botoes'

 element :botao, '#teste'
 element :mensagem, '#div1'

 def clicar_botao
    #wait_for_botao                  #desabilitado pois não rodou (espera o elemento aparecer na tela antes de clocar)
    botao.click
 end
end