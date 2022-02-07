Quando('eu cadastro o usuario') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Andrei')                      
    find('#user_lastname').set('Paganeli')                       
    find('#user_email').send_keys('andre@qlqq.com')                   
    find('input[value="Criar"]').click 
  end
  
  Entao('verifico se o usuario foi cadastrado') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
  end
  
  Quando('edito um usuario') do
    sleep(5)
    find('.btn.waves-light.blue').click
    
  end
  
  Entao('verifico se o usuario foi editado') do
    
  end
  
  # Quando utilizamos cenarios independentes, podemos usar as configurações normais da pasta env.rb
  # Quando quiser rodar de forma que um cenario dependa do outro, ou seja, end-to-end, precisa usar as configs vide modo abaixo:

  #OBS - Se não utilizar o conceito de end-to-end, apos cadastrar usuário, reseta a sessão, e não conseguiria testar o segundo
         #cenario, que seria editar este user recem cadastrado !!
         # Isto porque a gem cucumber por padrao reseta a sessão após cada cenario com o After do Capybara.reset_sessions
         # Para isso, desativa-se o require 'capybara/cucumber' e ativa-se os seguintes:

        #require 'capybara'
        #require 'capybara/dsl'
        #require 'capybara/rspec/matchers'
        #World(Capybara::DSL)            
        #World(Capybara::RSpecMatchers)  