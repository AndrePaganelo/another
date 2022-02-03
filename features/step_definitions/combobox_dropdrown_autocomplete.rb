Quando('interajo com dropdrown e select') do                                 
    visit "/buscaelementos/dropdowneselect"
    find('.btn.dropdown-button').click    #acho pela classe e clico
    find('#dropdown3').click              #acho pelo id e clico
 
    select 'Chrome', from: 'dropdown'    #clicando em uma opção de select
    select 'Safari', from: 'dropdown'
    find('option[value="2"').select_option  #mesma função, mas pegando pelo valor da option 2 Firefox
   
  end                                                                          
                                                                               
  Quando('preencho o autocomplete') do   
    visit "/widgets/autocomplete"                     #Auto complete: vc inspeciona o elemento, seta um texto e depois clica nele
    find('#autocomplete-input').set 'Rio de Janeiro'  #busquei pelo id e setei o texto Rio de Janeiro
    find('ul', text: 'Rio de Janeiro').click             #vai buscar uma tag que tenha UL e com texto Rio de Janeiro   
    sleep (5) 
    
    find('#autocomplete-input').set 'Santa Catarina'  #busquei pelo id e setei o texto Santa Catarina
    find('ul', text: 'Santa Catarina').click 
    sleep (5)  

  end                                                                          