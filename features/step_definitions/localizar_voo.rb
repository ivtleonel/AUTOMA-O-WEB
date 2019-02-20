Dado("que eu realize login") do
    @acessar = Realizar_Login.new
    @acessar.load
    @acessar.preencher_campos
end    

Quando("informo os detalhes do voo e clico em continue") do
    @voo = Localizar_Voo.new
    @voo.informar_dados
end

Então("vejo o resultado") do
    expect(page).to have_content('Select your departure and return flight from the selections below. Your total price will be higher than quoted if you elect to fly on a different airline for both legs of your travel.')  
    puts 'deu certo'
    sleep(2)
end
