#depois de cada cenario, tire a foto, mesmo se passou ou nao meu teste

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')   # a cada cenario, inserido um rejex para retirar espaços e coloco underline

    if scenario.failed?
     tirar_foto(scenario_name.downcase!, 'falhou')
    else
     tirar_foto(scenario_name.downcase!, 'passou')
    end

end