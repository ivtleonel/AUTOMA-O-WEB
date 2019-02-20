
Quando("informo os dados incorretos") do 
    @validarlogin = Validar_login.new
    @validarlogin.load 
    @validarlogin.preencher_campos
    sleep(2)
end  

Então("não consigo logar") do 

    expect(page).to have_content('Welcome back to Mercury Tours!')
                      
end

