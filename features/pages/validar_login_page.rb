class Validar_login < SitePrism::Page
    set_url '/mercurysignon.php'

    element :user, ('input[name=userName]')   
    element :password,  ('input[name=password]')
    element :submit, ('input[name=login]')  

    def preencher_campos   
        #usuario_invalido   
        user.set 'ivete'
        password.set 'parrot2018'
        submit.click 

        #senha_invalida  
        user.set 'parrot'
        password.set 'ivete28'
        submit.click

        #usuario_senha_invalidos  
        user.set 'ivete'
        password.set 'ivete28'
        submit.click 

        #campos_vazios  
        submit.click 

        #usuario_vazio  
        password.set 'parrot2018'
        submit.click 

        #senha_vazia  
        user.set 'parrot'
        submit.click 
    end
end    

   