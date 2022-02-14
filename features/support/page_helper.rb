Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }    
#pego todos arquivos que terminem com _page.rb e coloco no require para não ter mais que fazer um a um no carregamento de classes
# faço um join entre meu diretorio que tenha arquivos de pasta page, adiciono dentro da varivel file e dou um require file nele

module PageObjects      #criado um modulo
    def home            #criado um metodo home que cria uma variavel e recebe uma instancia de uma classe
        @home ||= MapeandoElementoPage.new  #fazendo a mesma coisa que fazia anteriormente de instanciar a classe  
    
    end
end