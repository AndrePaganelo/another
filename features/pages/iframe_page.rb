class PaginaIframe < SitePrism::Page

    element :nome, '#first_name'                #mapeando o elemento do iframe
    element :ultimo_nome, '#last_name'

end

class PaginaPadrao < SitePrism::Page                            #crio uma classe para mapear o iframe
    set_url '/mudancadefoco/iframe'
    iframe :preencher_campo, PaginaIframe, '#id_do_iframe'      #passo o nome da classe que possui os elementos mapeados daquele iframe
end