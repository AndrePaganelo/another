Quando('acesso a URL') do
   visit '/treinamento/home'
   sleep(5)
  end
  
  Então('eu verifico se estou na pagina correta') do
  expect(page).to have_current_path ('https://automacaocombatista.herokuapp.com/treinamento/home')
  sleep(5)
  end