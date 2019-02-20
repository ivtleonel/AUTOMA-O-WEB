Quando("insiro usuario e senha validos no formulário de Login") do
    @login = Realizar_Login.new
    @login.load
    @login.preencher_campos 
    
end

Então("visualizo localizador de voo") do
    visit 'http://newtours.demoaut.com/mercuryreservation.php'

    expect(page).to have_content(' Use our Flight Finder to search for the lowest fare on participating airlines.')
    
end    