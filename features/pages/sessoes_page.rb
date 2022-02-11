class Sessao < SitePrism::Section  #inves de herdar page, herda-se sessão

    element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'    #mapeando os elementos da sessao
    element :medium,  'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'          #mapeando os elementos da sessao
end

class Pagina < SitePrism::Page

    set_url '/buscaelementos/radioecheckbox'
    section :navbar, Sessao, '.nav-wrapper.container'                                                                                    #mapeando sessao
end