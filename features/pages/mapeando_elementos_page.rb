class MapeandoElementoPage < SitePrism::Page

    set_url '/users/new'              #setando a minha url base do formulário de cadastro

    element :nomedoelemento, '#user_name'             # o element faz igual ao find, mapeando o elemento e armazena no simbolo nome, que por padrão, o siteprism utiliza css
                                                        # seria o nosso: fill_in   ou find().set   ou   find().send_keys
        def preencher
          nomedoelemento.set 'andre' 
        end
  end
  


