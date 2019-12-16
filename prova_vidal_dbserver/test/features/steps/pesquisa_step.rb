Dado("que estou logado no site Automation Practice e realizo a pesquisa de Dresses") do
    home_page.load
    pesquisa_dress.pesquisa
    

  end
  
  Quando("eu escolher algum Dresses") do
    pesquisa_dress.add_carrinho
  end
  
  Quando("adicionar no carrinho") do
    checkout_page.checkout
    checkout_page.email_a
  end
  
  Então("o produto é visualizado no carrinho.") do
    checkout_page.shippin
    checkout_page.payment
    @compra_sucesso = find('h1.page-heading')
      if expect(@compra_sucesso.text).to eql "ORDER CONFIRMATION"
        puts 'Compra realizada com sucesso'
      else
        puts 'Compra não realizada'
      end
  end