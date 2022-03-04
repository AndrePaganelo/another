#criando o metodo para tirar fotos, em conjunto com o arquivo Hooks.rb

module Helper
 def tirar_foto(nome_arquivo, resultado)    #uma vez invocado o metodo de tirar_fotos, vamos receber o nome do arquivo, resultado se passou ou nao 
    caminho_arquivo = "results/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    embed(foto, 'image/png', 'Clique aqui')  # adiciona a foto no meu arquivo de relatorio html gerado.mas se habilitado gera erro
 end
end