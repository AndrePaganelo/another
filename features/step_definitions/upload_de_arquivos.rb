Quando('eu faco em upload de arquivo') do
    visit '/outros/uploaddearquivos'

    # Primeira Opção
    # attach_file('upload', 'C:\Users\andre\Automacao_Udemy/tests/features/Foto.jpg', make_visible: true)

    # Segunda Opção
    @foto = File.join(Dir.pwd, '/features/Foto.jpg')
    attach_file('upload', @foto, make_visible: true)
    sleep (4)
    
  end