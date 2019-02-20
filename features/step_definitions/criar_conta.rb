Quando("preencho o formulario") do
 
    @preenchendo = CriarContaPage.new

    @preenchendo.load

    @preenchendo.preencher_campos
   
end    

Então("confirmo conta criada") do 
  visit 'http://newtours.demoaut.com/create_account_success.php'

  expect(page).to have_content(' Note: Your user name is parrot.')

end    