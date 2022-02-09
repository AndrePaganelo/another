class MapeandoListas < SitePrism::Page
    set_url '/buscaelementos/table'
    elements :lista, 'tr > td'     #mapeado a lista que vai receber varios elementos
end