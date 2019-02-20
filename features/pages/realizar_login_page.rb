class Realizar_Login < SitePrism::Page
    set_url '/mercurysignon.php'

    element :user, ('input[name=userName]')   
    element :password,  ('input[name=password]')
    element :submit, ('input[value="Login"]')  

    def preencher_campos   
        user.set 'parrot'
        password.set 'parrot2018'
        submit.click 
    
    end


end