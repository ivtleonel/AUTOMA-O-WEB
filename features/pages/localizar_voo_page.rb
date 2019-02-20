class Localizar_Voo < SitePrism::Page
    #set_url '/mercuryreservation.php'
   #set_url '/mercurysignon.php'

    element :type, ('input[value="oneway"]')   
    element :service_class,  ('input[value="Coach"]')


    element :submit, ('input[name=findFlights]')  

    def informar_dados   
        type.click  
        select('2', from: 'passCount').click 
        select('New York', from: 'fromPort').click 
        select('March', from: 'fromMonth').click 
        select('3', from: 'fromDay').click 
        select('London', from: 'toPort').click 
        select('June', from: 'toMonth').click 
        select('2', from: 'toDay').click 
        service_class.click
        select('Blue', from: 'airline').click 
        submit.click
        #sleep(2)
    end   
    
end