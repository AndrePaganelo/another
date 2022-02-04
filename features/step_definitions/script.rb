
Quando('eu uso um script') do
   visit '/outros/scroll' 
   page.execute_script("window.scrollBy(0,10500)") #faz o scroll (zero lateral e 10500 para baixo). 
        @result = page.evaluate_script('4 + 4');
        puts @result
   sleep(7)


  end
  