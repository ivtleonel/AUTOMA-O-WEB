class CriarContaPage < SitePrism::Page
    set_url '/mercuryregister.php'
    #Contact Information
    element :name, ('input[name=firstName]')
    element :last_name, ('input[name=lastName]')
    element :phone, ('input[name=phone')
    element :email, '#userName'
    #Mailing Information
    element :address, ('input[name=address1]')
    element :city, ('input[name=city]')
    element :state, ('input[name=state]')
    element :postal_code, ('input[name=postalCode]')
    #User Information
    element :name_user, '#email'
    element :password_user, ('input[name=password]')   
    element :confirm_password,  ('input[name=confirmPassword]')
    element :register, ('input[name=register]')  

    def preencher_campos
        #Contact Information
        name.set 'parrot'
        last_name.set 'falante'
        phone.set '92992140280'
        email.set 'automacao_teste@gmail.com'
        #Mailing Information
        address.set 'Rua nova, 23'
        city.set 'Manaus'
        state.set 'Amazonas'
        postal_code.set '69087697'
        select('CANADA', from: 'country').click
        #User Information
        name_user.set 'parrot'
        password_user.set 'parrot2018'
        confirm_password.set 'parrot2018'
        register.click 
    
    end


end