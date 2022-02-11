Quando('preencho os campos') do
    @pagina_iframe = PaginaPadrao.new
    @pagina_iframe.load 

    @pagina_iframe.preencher_campo do |iframe|

        iframe.nome.set 'Andres'
        iframe.ultimo_nome 'Pagas'
    end
    sleep(4)
  end
  