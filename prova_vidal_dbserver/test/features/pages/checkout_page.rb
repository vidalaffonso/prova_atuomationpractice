class CheckoutPage < SitePrism::Page
    element :proceed_checkout, 'a.btn-default.button.button-medium'
    element :email, '#email'
    element :password, '#passwd'
    element :sing_in, '#SubmitLogin'
    element :terms_service, 'cgv'
    element :pay_bay_check, 'a.cheque'


    def checkout
     proceed_checkout.click
     find('span', text: "Proceed to checkout").click
    end

    def email_a
        email.set 'usuario@db.com'
        password.set 'Secret123'
        sing_in.click
        find('span', text: "Proceed to checkout").click
    end

def shippin
    check('cgv', allow_label_click: true)
    # terms_service.click
    
    find('span', text: "Proceed to checkout").click
    
end

def payment
    pay_bay_check.click
    find('span', text: "I confirm my order").click
    
end

    
  end