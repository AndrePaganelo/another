class PaginaInicial < SitePrism::Page
    set_url '/treinamento/home'
end

# assim, não preciso ficar colocando o visit, e sim, seto uma url para cada pageObject
# regra: usar um set url para cada pageobject
# PageObject existe para encpsular uma determinada pagina e os elementos dela, ou seja, não existe um PageObject para duas urls